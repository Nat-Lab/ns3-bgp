#include <arpa/inet.h>
#include "bgp.h"
#include "ns3/log.h"
#include "ns3/uinteger.h"

namespace ns3 {

NS_LOG_COMPONENT_DEFINE("Bgp");
NS_OBJECT_ENSURE_REGISTERED(Bgp);

TypeId Bgp::GetTypeId (void) {
    static TypeId tid = TypeId("ns3::Bgp")
        .SetParent<Application>()
        .SetGroupName("Internet")
        .AddConstructor<Bgp>();

    return tid;
}

Bgp::Bgp() : _logger("(init)"), _rib(&_logger) {
    _log_level = libbgp::INFO;

    _logger.setLogLevel(_log_level);
    _routing.SetRib(&_rib);
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

