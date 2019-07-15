#ifndef BGP_H
#define BGP_H

#include <vector>
#include "bgp-ns3-fsm.h"
#include "bgp-ns3-clock.h"
#include "bgp-ns3-socket-out.h"
#include "bgp-log.h"
#include "bgp-routing.h"
#include "bgp-ns3-socket-in.h"
#include "ns3/application.h"
#include "ns3/ipv4-address.h"
#include "ns3/socket.h"

namespace ns3 {

class Bgp;
class BgpNs3SocketIn;

class Peer : public SimpleRefCount<Peer> {
public:
    uint32_t local_asn;
    uint32_t peer_asn;
    Ipv4Address peer_address;
    libbgp::BgpFilterRules ingress_rules;
    libbgp::BgpFilterRules egress_rules;
    bool passive;

private:
    friend Bgp;
    friend BgpNs3SocketIn;

    Ptr<BgpNs3Fsm> _fsm;
    Ptr<Socket> _socket;
    Ptr<BgpLog> _logger;
    Ptr<BgpNs3SocketOut> _out_handler;
    Ptr<BgpNs3SocketIn> _in_handler;

    void Reset();
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
    void SetClockInterval(Time interval);

    // TODO: add/set: assert !_running

private:
    void Tick();

    bool ConnectPeer(Ptr<Peer> peer);
    bool CreateFsmForPeer(Ptr<Peer> peer);

    void HandleConnectIn(Ptr<Socket> socket, const Address &src);
    bool HandleConnectInRequest(Ptr<Socket> socket, const Address &src);
    void HandleConnectOut(Ptr<Socket> socket);
    void HandleConnectOutFailed(Ptr<Socket> socket);
    void HandleClose(Ptr<Socket> socket);

    Time _hold_timer;
    Time _clock_interval;

    BgpLog _logger;
    BgpNs3Clock _clock;
    Ipv4Address _bgp_id;

    Ptr<BgpRouting> _routing;
    Ptr<Socket> _listen_socket;
    Ptr<Ipv4RoutingProtocol> _old_protocol;

    std::vector<Ptr<Peer>> _peers;

    libbgp::BgpConfig _template;
    libbgp::BgpRib _rib;
    libbgp::RouteEventBus _bus;
    libbgp::LogLevel _log_level;

    bool _running;
};

}

#endif /* BGP_H */

