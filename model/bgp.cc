#include <arpa/inet.h>
#include "bgp.h"
#include "ns3/log.h"
#include "ns3/enum.h"
#include "ns3/ipv4-list-routing.h"
#include "ns3/tcp-socket-factory.h"
#include "ns3/simulator.h"

namespace ns3 {

NS_LOG_COMPONENT_DEFINE("Bgp");
NS_OBJECT_ENSURE_REGISTERED(Bgp);

TypeId Bgp::GetTypeId (void) {
    static TypeId tid = TypeId("ns3::Bgp")
        .SetParent<Application>()
        .SetGroupName("Internet")
        .AddConstructor<Bgp>()
        .AddAttribute("libbgp Log Level", "Log level for libbgp to use",
            EnumValue(libbgp::INFO),
            MakeEnumAccessor(&Bgp::_log_level),
            MakeEnumChecker(
                libbgp::FATAL, "Fatal",
                libbgp::ERROR, "Error",
                libbgp::WARN, "Warning",
                libbgp::INFO, "Info",
                libbgp::DEBUG, "Debug"))
        .AddAttribute("Router ID", "Local BGP ID",
            Ipv4AddressValue(),
            MakeIpv4AddressAccessor(&Bgp::_bgp_id),
            MakeIpv4AddressChecker())
        .AddAttribute("Hold Timer", "Hold Timer",
            TimeValue(Seconds(120)),
            MakeTimeAccessor(&Bgp::_hold_timer),
            MakeTimeChecker(Seconds(3), Seconds(UINT16_MAX)))
        .AddAttribute("Clock Interval", "Time to wait between ticking FSMs",
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
    list_routing->AddRoutingProtocol(_old_protocol, 10);
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
        MakeCallback(&Bgp::HandleRequest, this),
        MakeCallback(&Bgp::HandleAccept, this)
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

void Bgp::Tick() {
    // TODO connect retry

    NS_LOG_LOGIC("ticking FSMs...");
    for (Ptr<BgpNs3Fsm> fsm : _fsms) {
        fsm->tick();
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

    Ptr<Ipv4InterfaceAddress> local_address = _routing->GetAddressByNexthop(peer->peer_address);

    if (local_address == nullptr) {
        NS_LOG_WARN("peer AS" << peer->peer_asn << " (" << peer->peer_address << ") unreachable on any device, skipping.");
        return false;
    }

    NS_LOG_LOGIC("create and bind socket for peer AS" << peer->peer_asn << " (" << peer->peer_address << ") already exist, skipping.");

    Ptr<Socket> peer_socket = Socket::CreateSocket(GetNode(), TcpSocketFactory::GetTypeId());

    if (peer_socket->Bind(InetSocketAddress(local_address->GetLocal(), 179)) == -1) {
        NS_LOG_ERROR("failed to bind.");
        return false;
    }

    NS_LOG_LOGIC("registering callbacks...");

    peer_socket->SetConnectCallback(
        MakeCallback(&Bgp::HandleConnect, this),
        MakeCallback(&Bgp::HandleConnectFailed, this)
    );

    peer_socket->SetCloseCallbacks(
        MakeCallback(&Bgp::HandleClose, this),
        MakeCallback(&Bgp::HandleClose, this)
    );    
}

bool Bgp::CreateFsmForPeer(Ptr<Peer> peer) {
    NS_ASSERT(peer->_socket != nullptr);

    Ptr<Ipv4InterfaceAddress> local_address = _routing->GetAddressByNexthop(peer->peer_address);

    if (local_address == nullptr) {
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
    peer_config.nexthop = htonl(local_address->GetLocal().Get());
    peer_config.out_handler = PeekPointer(peer_out_handler);
    peer_config.peer_asn = peer->peer_asn;
    peer_config.peering_lan_length = local_address->GetMask().GetPrefixLength();
    peer_config.peering_lan_prefix = htonl(local_address->GetLocal().CombineMask(local_address->GetMask()).Get());

    Ptr<BgpNs3Fsm> peer_fsm = Create<BgpNs3Fsm>(peer_config);
    peer->_fsm = peer_fsm;
    _fsms.push_back(peer_fsm);

    return true;
}

void Bgp::HandleConnect(Ptr<Socket> socket) {
    NS_LOG_LOGIC("handling incoming connection: " << socket);

    Address peer;

    if (socket->GetPeerName(peer) == -1) {
        NS_LOG_WARN("failed to get peer information.");
        socket->Close();
    }

    Ipv4Address peer_ipv4 = Ipv4Address::ConvertFrom(peer);
    
    for (Ptr<Peer> peer : _peers) {
        if (peer->peer_address == peer_ipv4) {
            peer->_socket = socket;

            NS_ASSERT(peer->_fsm == nullptr);

            if (!CreateFsmForPeer(peer)) {
                NS_LOG_WARN("failed to create FSM for peer peer AS" << peer->peer_asn << " (" << peer->peer_address << ").");
                socket->Close();
                peer->_socket = nullptr;
                return;
            }

            return;
        }
    }

    NS_LOG_WARN("no matching peer found for souce address " << peer_ipv4);
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

