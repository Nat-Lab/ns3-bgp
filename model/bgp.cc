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

void Peer::Reset() {
    if (_fsm != nullptr) _fsm->resetHard();

    if (_socket != nullptr) {
        _socket->Close();
        _socket->SetRecvCallback(MakeNullCallback<void, Ptr<Socket>>());
        _socket->SetCloseCallbacks(
            MakeNullCallback<void, Ptr<Socket>>(),
            MakeNullCallback<void, Ptr<Socket>>()
        );
    }

    _fsm = nullptr;
    _socket = nullptr;
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
    _old_protocol = nullptr;
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
    _old_protocol = ipv4->GetRoutingProtocol();

    NS_LOG_LOGIC("installing BgpRouting...");

    Ptr<Ipv4ListRouting> list_routing = CreateObject<Ipv4ListRouting>();
    //list_routing->AddRoutingProtocol(_old_protocol, 10);
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

        ConnectPeer(peer);        
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

    NS_LOG_LOGIC("recovering old routing protocol...");

    Ptr<Ipv4> ipv4 = GetNode()->GetObject<Ipv4>();
    ipv4->SetRoutingProtocol(_old_protocol);

    NS_LOG_LOGIC("de-peering...");

    for (Ptr<Peer> peer : _peers) {
        if (peer->_fsm != nullptr) {
            peer->_fsm->stop();
        }
        peer->Reset();
    }

    NS_LOG_LOGIC("stopped.");
}

void Bgp::Tick() {
    // TODO connect retry

    for (Ptr<Peer> peer : _peers) {
        if (peer->_fsm != nullptr) peer->_fsm->tick();
    }

    if (_running) Simulator::Schedule(_clock_interval, MakeEvent(&Bgp::Tick, this));
    else NS_LOG_LOGIC("ticker stopped.");
}

bool Bgp::ConnectPeer(Ptr<Peer> peer) {
    if (peer->_fsm != nullptr || peer->_socket != nullptr) {
        NS_LOG_LOGIC("socket or fsm for peer AS" << peer->peer_asn << " (" << peer->peer_address << ") already exist, skipping.");
        return false;
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

    /* if (peer_socket->Bind(InetSocketAddress(Ipv4Address::GetAny(), 179)) == -1) {
        NS_LOG_ERROR("failed to bind.");
        return false;
    }*/

    NS_LOG_LOGIC("registering callbacks...");

    peer_socket->SetConnectCallback(
        MakeCallback(&Bgp::HandleConnectOut, this),
        MakeCallback(&Bgp::HandleConnectOutFailed, this)
    );

    if (peer_socket->Connect(InetSocketAddress(peer->peer_address, 179)) == -1) {
        NS_LOG_ERROR("failed to connect: " << strerror(errno));
        return false;
    }

    return true;
}

bool Bgp::CreateFsmForPeer(Ptr<Peer> peer) {
    NS_ASSERT(peer->_socket != nullptr);

    Ipv4InterfaceAddress local_address = _routing->GetAddressByNexthop(peer->peer_address);

    if (local_address.GetLocal().Get() == 0) {
        NS_LOG_WARN("peer AS" << peer->peer_asn << " (" << peer->peer_address << ") unreachable on any device.");
        return false;
    }

    NS_LOG_LOGIC("buliding FSM for peer AS" << peer->peer_asn << " (" << peer->peer_address << ").");

    char peer_name[128];
    snprintf(peer_name, 128, "AS%d", peer->peer_asn);
    libbgp::BgpConfig peer_config(_template);

    Ptr<BgpLog> peer_logger = Create<BgpLog>(peer_name);
    Ptr<BgpNs3SocketOut> peer_out_handler = Create<BgpNs3SocketOut>(peer->_socket);

    peer->_logger = peer_logger;
    peer->_out_handler = peer_out_handler;

    peer_config.asn = peer->local_asn;
    peer_config.in_filters = peer->ingress_rules;
    peer_config.out_filters = peer->egress_rules;
    peer_config.log_handler = PeekPointer(peer_logger);
    peer_config.nexthop = htonl(local_address.GetLocal().Get());
    peer_config.out_handler = PeekPointer(peer_out_handler);
    peer_config.peer_asn = peer->peer_asn;
    peer_config.peering_lan_length = local_address.GetMask().GetPrefixLength();
    peer_config.peering_lan_prefix = htonl(local_address.GetLocal().CombineMask(local_address.GetMask()).Get());

    Ptr<BgpNs3Fsm> peer_fsm = Create<BgpNs3Fsm>(peer_config);
    peer->_fsm = peer_fsm;

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

    for (Ptr<Peer> peer : _peers) {
        if (peer->_socket == socket) {
            NS_LOG_INFO("resetting peer AS" << peer->peer_asn << " (" << peer->peer_address << ").");
            peer->Reset();
            return;
        }
    }
}

bool Bgp::SetupPeer(Ptr<Peer> peer, Ptr<Socket> socket) {
    NS_LOG_LOGIC("setup peering for AS" << peer->peer_asn << " (" << peer->peer_address << ").");

    if (peer->_fsm != nullptr && peer->_socket != nullptr) {
        NS_LOG_INFO("found ongoing peering for AS" << peer->peer_asn << " (" << peer->peer_address << ").");

        if (peer->_fsm->getState() == libbgp::ESTABLISHED && peer->peer_asn > peer->local_asn) {
            NS_LOG_INFO("keeping old connection.");
            socket->Close();
            return false;
        } else {
            NS_ASSERT(peer->_socket != socket);
            Ptr<Socket> old_socket = peer->_socket;
            peer->_socket = socket;
            old_socket->Close();
            NS_LOG_INFO("replaced old socket (" << old_socket << ") with new (" << socket << ")");
        }
        
    }

    peer->_socket = socket;

    if (!CreateFsmForPeer(peer)) {
        NS_LOG_WARN("failed to create FSM for peer AS" << peer->peer_asn << " (" << peer->peer_address << "), dropping connection.");
        socket->Close();
        peer->_socket = nullptr;
        return false;
    }

    Ptr<BgpNs3SocketIn> in_handler = Create<BgpNs3SocketIn>(peer);
    peer->_in_handler = in_handler;

    socket->SetRecvCallback(MakeCallback(&BgpNs3SocketIn::HandleRead, in_handler));
    socket->SetCloseCallbacks(
        MakeCallback(&Bgp::HandleClose, this),
        MakeCallback(&Bgp::HandleClose, this)
    );
    return true;
}

void Bgp::HandleConnectIn(Ptr<Socket> socket, const Address &peer_addr) {
    InetSocketAddress peer_sockaddr = InetSocketAddress::ConvertFrom(peer_addr);

    NS_LOG_LOGIC("handling incoming connection from: " << peer_sockaddr.GetIpv4());
    
    for (Ptr<Peer> peer : _peers) {
        if (peer->peer_address == peer_sockaddr.GetIpv4()) {
            SetupPeer(peer, socket);
            NS_ASSERT(peer->_fsm != nullptr);
            return;
        }
    }

    socket->Close();
    NS_LOG_WARN("no matching peer found for souce address " << peer_sockaddr.GetIpv4());
}

void Bgp::HandleConnectOut(Ptr<Socket> socket) {
    Address peer_addr;

    if (socket->GetPeerName(peer_addr) == -1) {
        NS_LOG_WARN("failed to get peer information.");
        socket->Close();
    }

    InetSocketAddress peer_sockaddr = InetSocketAddress::ConvertFrom(peer_addr);

    NS_LOG_LOGIC("connecting to " << peer_sockaddr.GetIpv4() << "...");

    for (Ptr<Peer> peer : _peers) {
        if (peer->peer_address == peer_sockaddr.GetIpv4()) {
            if (SetupPeer(peer, socket)) {
                NS_ASSERT(peer->_fsm != nullptr);
                NS_LOG_LOGIC("invoking start on FSM for peer AS" << peer->peer_asn << " (" << peer->peer_address << ").");
                peer->_fsm->start();
            }
            return;
        }
    }

    socket->Close();
    NS_FATAL_ERROR("connect-out called but no matching peer found.");
}

void Bgp::AddPeer(const Peer &peer) {
    Ptr<Peer> peer_ptr = Create<Peer>(peer);
    _peers.push_back(peer_ptr);
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

