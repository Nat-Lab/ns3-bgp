#ifndef BGP_H
#define BGP_H

#include <vector>
#include "bgp-ns3-fsm.h"
#include "bgp-ns3-clock.h"
#include "bgp-log.h"
#include "bgp-routing.h"
#include "ns3/application.h"
#include "ns3/ipv4-address.h"
#include "ns3/socket.h"

namespace ns3 {

class Bgp;

class Peer {
public:
    uint32_t local_asn;
    uint32_t peer_asn;
    Ipv4Address peer_address;
    libbgp::BgpFilterRules ingress_rules;
    libbgp::BgpFilterRules egress_rules;
    bool passive;

private:
    friend Bgp;
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
    void AddRoute(const Ipv4Address &prefix, const Ipv4Mask &mask, const Ipv4Address &nexthop);

    void SetLibbgpLogLevel(libbgp::LogLevel log_level);
    void SetBgpId(Ipv4Address bgp_id);
    void SetHoldTimer(Time hold_timer);

    void HandleAccept(Ptr<Socket> socket, const Address &src);
    bool HandleRequest(Ptr<Socket> socket, const Address &src);
    
private:
    Time _hold_timer;

    BgpLog _logger;
    BgpNs3Clock _clock;
    Ipv4Address _bgp_id;

    Ptr<BgpRouting> _routing;
    Ptr<Socket> _listen_socket;
    Ptr<Ipv4RoutingProtocol> _old_protocol;

    std::vector<Ptr<BgpNs3Fsm>> _fsms;
    std::vector<Peer> _peers;

    libbgp::BgpConfig _template;
    libbgp::BgpRib _rib;
    libbgp::RouteEventBus _bus;
    libbgp::LogLevel _log_level;

    bool _running;
};

}

#endif /* BGP_H */

