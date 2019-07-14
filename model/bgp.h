#ifndef BGP_H
#define BGP_H

#include <vector>
#include "bgp-ns3-fsm.h"
#include "bgp-log.h"
#include "bgp-routing.h"
#include "ns3/application.h"
#include "ns3/ipv4-address.h"

namespace ns3 {

class Bgp;

class Peer {
public:
    uint32_t asn;
    Ipv4Address address;
    libbgp::BgpFilterRules ingress_rules;
    libbgp::BgpFilterRules egress_rules;

private:
    uint32_t device_id;
};

class Bgp : public Application {
public:
    Bgp();
    static TypeId GetTypeId (void);

    void StartApplication(void);
	void StopApplication(void);

    void AddPeer(const Peer &peer);

    void AddRoute(libbgp::Route route, uint32_t nexthop);
    void AddRoute(uint32_t prefix, uint8_t mask, uint32_t nexthop);
    void AddRoute(Ipv4Address prefix, Ipv4Mask mask, Ipv4Address nexthop);

    void SetAsn(uint32_t asn);
    void SetRouterId(uint32_t router_id);
    void SetRouterid(Ipv4Address router_id);
    void SetLibbgpLogLevel(libbgp::LogLevel log_level);
    
private:
    uint32_t _asn;

    BgpLog _logger;
    BgpRouting _routing;
    Ipv4Address _router_id;

    std::vector<Ptr<BgpNs3Fsm>> _fsms;
    std::vector<Peer> _peers;

    libbgp::BgpConfig _template;
    libbgp::BgpRib _rib;
    libbgp::RouteEventBus _bus;
    libbgp::LogLevel _log_level;
};

}

#endif /* BGP_H */

