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
    Ipv4InterfaceAddress _local_addr;
};

class Session : public SimpleRefCount<Session> {
public:
    Ptr<Peer> peer;
    Ptr<BgpNs3Fsm> fsm;
    Ptr<Socket> socket;
    Ptr<BgpLog> logger;
    Ptr<BgpNs3SocketOut> out_handler;
    Ptr<BgpNs3SocketIn> in_handler;

    void Drop();
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
    bool SessionInit(bool local_init, Ptr<Socket> socket);

    void HandleConnectIn(Ptr<Socket> socket, const Address &src);
    bool HandleConnectInRequest(Ptr<Socket> socket, const Address &src);
    void HandleConnectOut(Ptr<Socket> socket);
    void HandleConnectOutFailed(Ptr<Socket> socket);
    void HandleClose(Ptr<Socket> socket);
    void HandleStateChange(Ptr<Socket> socket, int old_state, int new_state);

    Time _hold_timer;
    Time _clock_interval;

    BgpLog _logger;
    BgpNs3Clock _clock;
    Ipv4Address _bgp_id;

    Ptr<BgpRouting> _routing;
    Ptr<Socket> _listen_socket;

    std::vector<Ptr<Peer>> _peers;
    std::vector<Ptr<Session>> _sessions;

    libbgp::BgpConfig _template;
    libbgp::BgpRib _rib;
    libbgp::RouteEventBus _bus;
    libbgp::LogLevel _log_level;

    bool _running;
};

}

#endif /* BGP_H */

