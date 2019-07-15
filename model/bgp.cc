#include <arpa/inet.h>
#include "bgp.h"
#include "ns3/log.h"
#include "ns3/enum.h"
#include "ns3/ipv4-list-routing.h"
#include "ns3/ipv4-static-routing.h"
#include "ns3/tcp-socket-factory.h"
#include "ns3/simulator.h"

namespace ns3 {

NS_LOG_COMPONENT_DEFINE("Bgp");
NS_OBJECT_ENSURE_REGISTERED(Bgp);

void Session::Drop() {
    socket->SetRecvCallback(MakeNullCallback<void, Ptr<Socket>>());
    socket->SetCloseCallbacks(
        MakeNullCallback<void, Ptr<Socket>>(),
        MakeNullCallback<void, Ptr<Socket>>()
    );
    socket->Close();
    socket = nullptr;

    //out_handler->setStateChangeCallback(MakeNullCallback<void, Ptr<Socket>, int, int>());
    //fsm->stop();
    fsm->resetHard();
    
}

TypeId Bgp::GetTypeId (void) {
    static TypeId tid = TypeId("ns3::Bgp")
        .SetParent<Application>()
        .SetGroupName("Internet")
        .AddConstructor<Bgp>()
        .AddAttribute("LibbgpLogLevel", "Log level for libbgp to use",
            EnumValue(libbgp::INFO),
            MakeEnumAccessor(&Bgp::_log_level),
            MakeEnumChecker(
                libbgp::FATAL, "Fatal",
                libbgp::ERROR, "Error",
                libbgp::WARN, "Warning",
                libbgp::INFO, "Info",
                libbgp::DEBUG, "Debug"))
        .AddAttribute("RouterID", "Local BGP ID",
            Ipv4AddressValue(),
            MakeIpv4AddressAccessor(&Bgp::_bgp_id),
            MakeIpv4AddressChecker())
        .AddAttribute("HoldTimer", "Hold Timer",
            TimeValue(Seconds(120)),
            MakeTimeAccessor(&Bgp::_hold_timer),
            MakeTimeChecker(Seconds(3), Seconds(UINT16_MAX)))
        .AddAttribute("ClockInterval", "Time to wait between ticking FSMs",
            TimeValue(Seconds(1)),
            MakeTimeAccessor(&Bgp::_clock_interval),
            MakeTimeChecker());

    return tid;
}

Bgp::Bgp() : _logger("(init)"), _rib(&_logger) {
    _log_level = libbgp::INFO;

    _logger.setLogLevel(_log_level);
    _routing = CreateObject<BgpRouting>();
    _routing->SetRib(&_rib);

    _running = false;
    _listen_socket = nullptr;
}

void Bgp::StartApplication(void) {
    if (_running) {
        NS_LOG_WARN("BGP application already started.");
        return;
    }

    NS_LOG_LOGIC("creating configuration template...");
    _template.clock = &_clock;
    _template.forced_default_nexthop = false;
    _template.hold_timer = (uint16_t) _hold_timer.GetSeconds();
    _template.no_collision_detection = false;
    _template.no_nexthop_check = false;
    _template.rev_bus = &_bus;
    _template.rib = &_rib;
    _template.router_id = htonl(_bgp_id.Get());
    _template.use_4b_asn = true;

    Ptr<Ipv4> ipv4 = GetNode()->GetObject<Ipv4>();

    NS_LOG_LOGIC("installing BgpRouting...");

    Ptr<Ipv4ListRouting> list_routing = CreateObject<Ipv4ListRouting>();
    list_routing->AddRoutingProtocol(CreateObject<Ipv4StaticRouting>(), 10);
    list_routing->AddRoutingProtocol(_routing, 5);
    ipv4->SetRoutingProtocol(list_routing);

    NS_LOG_LOGIC("starting listening socket...");

    _listen_socket = Socket::CreateSocket(GetNode(), TcpSocketFactory::GetTypeId());
    
    if (_listen_socket->Bind(InetSocketAddress(Ipv4Address::GetAny(), 179)) == -1) {
        NS_FATAL_ERROR("failed to bind socket.");
    }

    if (_listen_socket->Listen() == -1) {
        NS_FATAL_ERROR("failed to listen socket");
    }

    NS_LOG_LOGIC("registering callbacks...");

    _listen_socket->SetAcceptCallback(
        MakeCallback(&Bgp::HandleConnectInRequest, this),
        MakeCallback(&Bgp::HandleConnectIn, this)
    );
    
    NS_LOG_LOGIC("sending OPEN message to peers...");

    for (Ptr<Peer> &peer : _peers) {
        if (peer->passive) {
            NS_LOG_LOGIC("skipping passive peer AS" << peer->peer_asn << " (" << peer->peer_address << ").");
            continue;
        }

        // allow other events to run too.
        Simulator::ScheduleNow(MakeEvent(&Bgp::ConnectPeer, this, peer));   
    }

    NS_LOG_LOGIC("init complete.");
    _running = true;

    Simulator::Schedule(_clock_interval, MakeEvent(&Bgp::Tick, this));
}

void Bgp::StopApplication(void) {
    if (!_running) return;
    
    _running = false;

    NS_LOG_LOGIC("closing listening socket...");

    _listen_socket->Close();
    _listen_socket->SetAcceptCallback(
        MakeNullCallback<bool, Ptr<Socket>, const Address &> (),
        MakeNullCallback<void, Ptr<Socket>, const Address &> ()
    );

    NS_LOG_LOGIC("de-peering...");

    for (std::vector<Ptr<Session>>::iterator s = _sessions.begin(); s != _sessions.end();) {
        (*s)->Drop();
        _sessions.erase(s);
    }

    NS_LOG_LOGIC("stopped.");
}

void Bgp::Tick() {
    // TODO connect retry

    for (Ptr<Session> session : _sessions) {
        session->fsm->tick();
    }

    if (_running) Simulator::Schedule(_clock_interval, MakeEvent(&Bgp::Tick, this));
    else NS_LOG_LOGIC("ticker stopped.");
}

bool Bgp::ConnectPeer(Ptr<Peer> peer) {
    for (const Ptr<Session> session : _sessions) {
        if (session->peer == peer) {
            NS_LOG_INFO("session or fsm for peer AS" << peer->peer_asn << " (" << peer->peer_address << ") already exist, skipping.");
            return false;
        }
    }

    NS_LOG_LOGIC("obtaning local address information for peer AS" << peer->peer_asn << " (" << peer->peer_address << ").");

    Ipv4InterfaceAddress local_address = _routing->GetAddressByNexthop(peer->peer_address);

    if (local_address.GetLocal().Get() == 0) {
        NS_LOG_WARN("peer AS" << peer->peer_asn << " (" << peer->peer_address << ") unreachable on any device, skipping.");
        return false;
    }

    NS_LOG_LOGIC("create and bind socket for peer AS" << peer->peer_asn << " (" << peer->peer_address << ").");

    Ptr<Socket> peer_socket = Socket::CreateSocket(GetNode(), TcpSocketFactory::GetTypeId());

    NS_LOG_LOGIC("using local address: " << local_address);

    peer->_local_addr = local_address;

    NS_LOG_LOGIC("registering callbacks...");

    peer_socket->SetConnectCallback(
        MakeCallback(&Bgp::HandleConnectOut, this),
        MakeCallback(&Bgp::HandleConnectOutFailed, this)
    );

    // TODO: set TTL

    if (peer_socket->Connect(InetSocketAddress(peer->peer_address, 179)) == -1) {
        NS_LOG_ERROR("failed to connect: " << strerror(errno));
        return false;
    }

    return true;
}

bool Bgp::HandleConnectInRequest(Ptr<Socket> socket, const Address &src) {
    return true;
}

void Bgp::HandleConnectOutFailed(Ptr<Socket> socket) {
    NS_LOG_WARN("socket connect failed: " << socket);
}

void Bgp::HandleClose(Ptr<Socket> socket) {
    NS_LOG_LOGIC("handleing connection shutdown: " << socket);

    for (std::vector<Ptr<Session>>::iterator session = _sessions.begin();
         session != _sessions.end(); session++) {
        if ((*session)->socket == socket) {
            NS_LOG_INFO("dropping session of AS" << (*session)->peer->peer_asn << " (" << (*session)->peer->peer_address << ").");
            (*session)->Drop();
            _sessions.erase(session);
            return;
        }
    }
}

void Bgp::HandleConnectIn(Ptr<Socket> socket, const Address &peer_addr) {
    NS_LOG_LOGIC("incoming connection.");
    SessionInit(false, socket);
}

void Bgp::HandleConnectOut(Ptr<Socket> socket) {
    NS_LOG_LOGIC("connected. unregister connect callback...");
    socket->SetConnectCallback(
        MakeNullCallback<void, Ptr<Socket>>(),
        MakeNullCallback<void, Ptr<Socket>>()
    );
    SessionInit(true, socket);
}

bool Bgp::SessionInit(bool local_init, Ptr<Socket> socket) {
    Address peer_addr;
    
    if (socket->GetPeerName(peer_addr) == -1) {
        NS_LOG_WARN("failed to get peer information.");
        socket->Close();
        return false;
    }
    
    InetSocketAddress peer_sockaddr = InetSocketAddress::ConvertFrom(peer_addr);
    Ptr<Peer> peer = nullptr;

    NS_LOG_LOGIC("prepareing session with " << peer_sockaddr.GetIpv4() << "...");

    for (Ptr<Peer> _peer : _peers) {
        if (_peer->peer_address == peer_sockaddr.GetIpv4()) {
            peer = _peer;
            break;
        }
    }

    if (peer == nullptr) {
        NS_LOG_WARN("socket peer address " << peer_sockaddr.GetIpv4() << "does not belong to any peer.");
        socket->Close();
        return false;
    }

    for (const Ptr<Session> session : _sessions) {
        if (session->peer == peer && session->fsm->getState() == libbgp::ESTABLISHED) {
            NS_LOG_INFO("session or fsm for peer AS" << peer->peer_asn << " (" << peer->peer_address << ") already exist and established, closing socket.");
            socket->Close();
            return false;
        }
    }
    
    Ipv4InterfaceAddress local_addr = _routing->GetAddressByNexthop(peer_sockaddr.GetIpv4());
    peer->_local_addr = local_addr;

    if (local_addr.GetLocal().Get() == 0) {
        NS_LOG_WARN("peer AS" << peer->peer_asn << " (" << peer->peer_address << ") unreachable on any device.");
        socket->Close();
        return false;
    }

    NS_LOG_LOGIC("matching peer found. (AS" << peer->peer_asn << ", " <<  peer->peer_address << ").");

    char peer_name[128];
    snprintf(peer_name, 128, "AS%d", peer->peer_asn);
    libbgp::BgpConfig peer_config(_template);

    Ptr<BgpLog> peer_logger = Create<BgpLog>(peer_name);
    Ptr<BgpNs3SocketOut> peer_out_handler = Create<BgpNs3SocketOut>(socket, MakeCallback(&Bgp::HandleStateChange, this));

    peer_logger->setLogLevel(_log_level);

    peer_config.asn = peer->local_asn;
    peer_config.in_filters = peer->ingress_rules;
    peer_config.out_filters = peer->egress_rules;
    peer_config.log_handler = PeekPointer(peer_logger);
    peer_config.nexthop = htonl(local_addr.GetLocal().Get());
    peer_config.out_handler = PeekPointer(peer_out_handler);
    peer_config.peer_asn = peer->peer_asn;
    peer_config.peering_lan_length = local_addr.GetMask().GetPrefixLength();
    peer_config.peering_lan_prefix = htonl(local_addr.GetLocal().CombineMask(local_addr.GetMask()).Get());

    // TODO: clean BgpNs3SocketIn to take only fsm.

    Ptr<BgpNs3Fsm> peer_fsm = Create<BgpNs3Fsm>(peer_config);
    Ptr<Session> peer_session = Create<Session>();
    Ptr<BgpNs3SocketIn> in_handler = Create<BgpNs3SocketIn>(peer_fsm);
    peer_session->peer = peer;
    peer_session->socket = socket;
    peer_session->fsm = peer_fsm;
    peer_session->logger = peer_logger;
    peer_session->out_handler = peer_out_handler;
    peer_session->in_handler = in_handler;
    
    socket->SetRecvCallback(MakeCallback(&BgpNs3SocketIn::HandleRead, in_handler));
    socket->SetCloseCallbacks(
        MakeCallback(&Bgp::HandleClose, this),
        MakeCallback(&Bgp::HandleClose, this)
    );

    if (local_init) peer_fsm->start();

    _sessions.push_back(peer_session);

    return true;
}

void Bgp::HandleStateChange(Ptr<Socket> socket, int old_state, int new_state) {
    if (new_state == libbgp::IDLE || new_state == libbgp::BROKEN) {
        socket->Close();
    }
}

void Bgp::AddPeer(const Peer &peer) {
    _peers.push_back(Create<Peer>(peer));
}

void Bgp::AddRoute(libbgp::Route route, uint32_t nexthop) {
    _rib.insert(&_logger, route, nexthop);
}

void Bgp::AddRoute(uint32_t prefix, uint8_t mask, uint32_t nexthop) {
    AddRoute(libbgp::Route(prefix, mask), nexthop);
}

void Bgp::AddRoute(const Ipv4Address &prefix, const Ipv4Mask &mask, const Ipv4Address &nexthop) {
    AddRoute(htonl(prefix.Get()), (uint8_t) mask.GetPrefixLength(), htonl(nexthop.Get()));
}

void Bgp::SetLibbgpLogLevel(libbgp::LogLevel log_level) {
    _log_level = log_level;
}

}

