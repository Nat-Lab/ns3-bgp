/**
 * @file bgp-routing.h
 * @author Nato Morichika <nat@nat.moe>
 * @brief ns3 BGP module: routing protocol (Ipv4RoutingProtocol)
 * @version 0.1
 * @date 2019-07-13
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#ifndef BGP_ROUTING_H
#define BGP_ROUTING_H

#include <libbgp/bgp-rib4.h>
#include "ns3/ipv4-routing-protocol.h"

namespace ns3 {

/**
 * @brief The Ipv4RoutingProtocol for Bgp module.
 * 
 */
class BgpRouting : public Ipv4RoutingProtocol {
public:
    BgpRouting();

    static TypeId GetTypeId (void);

    Ptr<Ipv4Route> RouteOutput (Ptr<Packet> p, const Ipv4Header &header, Ptr<NetDevice> oif,
                                Socket::SocketErrno &sockerr);
    
    bool RouteInput (Ptr<const Packet> p, const Ipv4Header &header, Ptr<const NetDevice> idev,
                     UnicastForwardCallback ucb, MulticastForwardCallback mcb,
                     LocalDeliverCallback lcb, ErrorCallback ecb);
    
    void NotifyInterfaceUp (uint32_t interface);
  	void NotifyInterfaceDown (uint32_t interface);
  	void NotifyAddAddress (uint32_t interface, Ipv4InterfaceAddress address);
  	void NotifyRemoveAddress (uint32_t interface, Ipv4InterfaceAddress address);
  	void PrintRoutingTable (Ptr<OutputStreamWrapper> stream, Time::Unit unit = Time::S) const;

    void SetIpv4 (Ptr<Ipv4> ipv4);
    void SetRib(const libbgp::BgpRib4 *rib);

    Ptr<NetDevice> GetDeviceByNexthop(const Ipv4Address &nexthop) const;
    Ipv4InterfaceAddress GetAddressByNexthop(const Ipv4Address &nexthop) const;

private:
    const libbgp::BgpRib4 *_rib;
    Ptr<Ipv4> _ipv4;
};

}

#endif // BGP_ROUTING_H