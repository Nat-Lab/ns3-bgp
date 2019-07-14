#include <arpa/inet.h>
#include "bgp.h"
#include "ns3/log.h"
#include "ns3/enum.h"
#include "ns3/ipv4-list-routing.h"
#include "ns3/tcp-socket-factory.h"

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
            MakeTimeChecker(Seconds(3), Seconds(UINT16_MAX)));

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



void Bgp::AddPeer(const Peer &peer) {
    _peers.push_back(peer);
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

