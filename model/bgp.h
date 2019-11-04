/**
 * @file bgp.h
 * @author Nato Morichika <nat@nat.moe>
 * @brief BGP module for ns3.
 * @version 0.1
 * @date 2019-07-15
 * 
 * @copyright Copyright (c) 2019
 * 
 */
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

/**
 * @brief Peer configuration class.
 * 
 */
class Peer : public SimpleRefCount<Peer> {
public:
    Peer();

    uint32_t local_asn; //!< local ASN.
    uint32_t peer_asn; //!< peer ASN.
    Ipv4Address peer_address; //!< peer's address.
    libbgp::BgpFilterRules ingress_rules; //!< ingress router filter rules. See libbgp documents.
    libbgp::BgpFilterRules egress_rules; //!< egress router filter rules. See libbgp documents.

    bool passive; //!< passive peering (don't send OPEN)
    int8_t allow_local_as; //!< Allow N local ASN in AS_PATH
    int32_t weight; //!< weight of this peer
    bool no_nexthop_check; //!< disable nexthop attribute validation
    bool forced_default_nexthop; //!< always use peering IP as nexthop.
    bool ibgp_alter_nexthop; //!< alter IBGP nexthop attribute the same way as EBGP.

    uint8_t ebgp_multihop;

};

/**
 * @brief Session information class.
 * 
 */
class Session : public SimpleRefCount<Session> {
public:
    Ptr<Peer> peer;
    Ptr<BgpNs3Fsm> fsm; 
    Ptr<Socket> socket;
    Ptr<BgpLog> logger;
    Ptr<BgpNs3SocketOut> out_handler;
    Ptr<BgpNs3SocketIn> in_handler;

    bool local_init;

    void Drop();
};

/**
 * @brief The Bgp Application.
 * 
 */
class Bgp : public Application {
public:
    Bgp();
    static TypeId GetTypeId (void);

    void StartApplication(void);
	void StopApplication(void);

    void AddPeer(const Peer &peer);
    void AddRoute(libbgp::Prefix4 route, uint32_t nexthop);
    void AddRoute(uint32_t prefix, uint8_t mask, uint32_t nexthop);
    void AddRoute(const Ipv4Address &prefix, const Ipv4Mask &mask, const Ipv4Address &nexthop);
    void SetLibbgpLogLevel(libbgp::LogLevel log_level);
    void SetBgpId(Ipv4Address bgp_id);
    void SetHoldTimer(Time hold_timer);
    void SetClockInterval(Time interval);

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
    Time _error_hold;

    BgpLog _logger;
    BgpNs3Clock _clock;
    Ipv4Address _bgp_id;

    Ptr<BgpRouting> _routing;
    Ptr<Socket> _listen_socket;

    std::vector<Ptr<Peer>> _peers;
    std::vector<Ptr<Session>> _sessions;

    libbgp::BgpConfig _template;
    libbgp::BgpRib4 _rib;
    libbgp::RouteEventBus _bus;
    libbgp::LogLevel _log_level;

    bool _running;
};

}

#endif /* BGP_H */

