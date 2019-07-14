/**
 * @file bgp-routing.cc
 * @author Nato Morichika <nat@nat.moe>
 * @brief ns3 BGP module: routing protocol (Ipv4RoutingProtocol)
 * @version 0.1
 * @date 2019-07-13
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#include <arpa/inet.h>
#include "bgp-routing.h"
#include "ns3/log.h"
#include "ns3/node.h"
#include "ns3/simulator.h"

namespace ns3 {

NS_LOG_COMPONENT_DEFINE("BgpRouting");
NS_OBJECT_ENSURE_REGISTERED(BgpRouting);

BgpRouting::BgpRouting() {
    _ipv4 = nullptr;
    _rib = nullptr;
}

Ptr<Ipv4Route> BgpRouting::RouteOutput (Ptr<Packet> p, const Ipv4Header &header, 
    Ptr<NetDevice> oif, Socket::SocketErrno &sockerr) {
    NS_ASSERT(_ipv4 != nullptr);
    Ipv4Address dst = header.GetDestination();

    if (dst.IsMulticast()) {
        NS_LOG_INFO("multicast destination " << dst << " not supported by BgpRouting.");
        return nullptr;
    }

    NS_LOG_DEBUG("looking for destination " << dst << " in rib.");

    const libbgp::BgpRibEntry *rslt = _rib->lookup(dst.Get());

    if (rslt == nullptr) {
        NS_LOG_INFO("no matching entry in rib for destination " << dst << ".");
        return nullptr;
    }
    
    uint32_t nexthop = ntohl(rslt->getNexthop());
    Ipv4Address gateway (nexthop);

    // oif not bonded, we need to find it ourself.
    Ptr<NetDevice> dev = (oif == nullptr) ? GetDeviceByNexthop(gateway) : oif;

    if (dev == nullptr) {
        NS_LOG_WARN("no device found for nexthop " << gateway << ", and not bonded.");
        return nullptr;
    }
    
    Ptr<Ipv4Route> route = Create<Ipv4Route>();
    route->SetDestination(dst);
    route->SetGateway(gateway);
    route->SetOutputDevice(dev);

    Ipv4Address source = header.GetSource();
    if (source.IsAny()) source = _ipv4->GetAddress(_ipv4->GetInterfaceForDevice(dev), 0).GetLocal();
    route->SetSource(source);

    return route;
}

bool BgpRouting::RouteInput (Ptr<const Packet> p, const Ipv4Header &header, Ptr<const NetDevice> idev,
    UnicastForwardCallback ucb, MulticastForwardCallback mcb, LocalDeliverCallback lcb, 
    ErrorCallback ecb) {
    NS_ASSERT(_ipv4 != nullptr);
    NS_ASSERT(_ipv4->GetInterfaceForDevice (idev) >= 0);
    
    Ipv4Address dst = header.GetDestination();
    uint32_t iface = _ipv4->GetInterfaceForDevice(idev);
    
    // we don't do multicast
    if (dst.IsMulticast()) {
        NS_LOG_LOGIC("ignoring multicast destination " << dst << " .");
        return false;
    }

    // to local?
    if (_ipv4->IsDestinationAddress(dst, iface)) {
        NS_LOG_LOGIC("destination " << dst << " is local.");
        lcb(p, header, iface);
        return true;
    }

    const libbgp::BgpRibEntry *rslt = _rib->lookup(dst.Get());

    if (rslt == nullptr) {
        NS_LOG_INFO("no matching entry in rib for destination " << dst << ".");
        return false;
    }
    
    uint32_t nexthop = ntohl(rslt->getNexthop());
    Ipv4Address gateway (nexthop);
    NS_LOG_LOGIC("nexthop of " << dst << " is at " << gateway << ".");

    Ptr<NetDevice> dev = GetDeviceByNexthop(gateway);

    if (dev == nullptr) {
        NS_LOG_WARN("no device found for nexthop " << gateway << ".");
        return false;
    }

    Ptr<Ipv4Route> route = Create<Ipv4Route>();
    route->SetDestination(dst);
    route->SetGateway(gateway);
    route->SetOutputDevice(dev);
    route->SetSource(header.GetSource());

    ucb(route, p, header);
    return true;
}

/**
 * @brief Look for device to output/forward packet by nexthop.
 * 
 * @param nexthop Nexthop.
 * @return Ptr<NetDevice> Output device.
 * @retval nullptr Device not found.
 * @retval !=nullptr Output device.
 */
Ptr<NetDevice> BgpRouting::GetDeviceByNexthop(const Ipv4Address &nexthop) const {
    uint32_t n_ifaces = _ipv4->GetNInterfaces();

    for (uint32_t iface_id = 0; iface_id < n_ifaces; iface_id++) {
        uint32_t n_addrs = _ipv4->GetNAddresses(iface_id);
        for (uint32_t addr_id = 0; addr_id < n_addrs; addr_id++) {
            Ipv4InterfaceAddress addr = _ipv4->GetAddress(iface_id, addr_id);
            Ipv4Mask mask = addr.GetMask();
            if (addr.GetLocal().CombineMask(mask) == nexthop.CombineMask(mask)) {
                if (_ipv4->IsForwarding(iface_id) && _ipv4->IsUp(iface_id)) {
                    return _ipv4->GetNetDevice(iface_id);
                } else NS_LOG_INFO("interface " << iface_id << " has matching address but not up or not in forwarding mode.");
            }           
        }
    }

    return nullptr;
}

/**
 * @brief Set the libbgp Routing Information Base to use.
 * 
 * @param rib The libbgp RIB.
 */
void BgpRouting::SetRib(const libbgp::BgpRib *rib) {
    _rib = rib;
}


}