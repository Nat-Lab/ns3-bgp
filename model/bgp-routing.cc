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

TypeId BgpRouting::GetTypeId (void) {
    static TypeId tid = TypeId ("ns3::BgpRouting")
        .SetParent<Ipv4RoutingProtocol>()
        .SetGroupName ("Internet")
        .AddConstructor<BgpRouting>();

    return tid;
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

    const libbgp::BgpRib4Entry *rslt = _rib->lookup(htonl(dst.Get()));

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
    if (source.IsAny() || source == Ipv4Address(0x66666666)) source = _ipv4->GetAddress(_ipv4->GetInterfaceForDevice(dev), 0).GetLocal();
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

    const libbgp::BgpRib4Entry *rslt = _rib->lookup(htonl(dst.Get()));

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
 * @brief Look for the interface address that can reach a given nexthop.
 * 
 * Return address if found. If not found, a 0.0.0.0 address will be returned
 * and a warning will be logger.
 * 
 * @param nexthop Nexthop.
 * @return Ipv4InterfaceAddress Interface address.
 */
Ipv4InterfaceAddress BgpRouting::GetAddressByNexthop(const Ipv4Address &nexthop) const {
    uint32_t n_ifaces = _ipv4->GetNInterfaces();

    for (uint32_t iface_id = 0; iface_id < n_ifaces; iface_id++) {
        uint32_t n_addrs = _ipv4->GetNAddresses(iface_id);
        for (uint32_t addr_id = 0; addr_id < n_addrs; addr_id++) {
            Ipv4InterfaceAddress addr = _ipv4->GetAddress(iface_id, addr_id);
            Ipv4Mask mask = addr.GetMask();
            if (addr.GetLocal().CombineMask(mask) == nexthop.CombineMask(mask)) {
                return addr;
            }           
        }
    }

    return Ipv4InterfaceAddress(Ipv4Address((uint32_t) 0), Ipv4Mask((uint32_t) 0));
}

/**
 * @brief Set the libbgp Routing Information Base to use.
 * 
 * @param rib The libbgp RIB.
 */
void BgpRouting::SetRib(const libbgp::BgpRib4 *rib) {
    _rib = rib;
}

/* things we don't care */
void BgpRouting::NotifyInterfaceUp (uint32_t interface) {}
void BgpRouting::NotifyInterfaceDown (uint32_t interface) {}
void BgpRouting::NotifyAddAddress (uint32_t interface, Ipv4InterfaceAddress address) {}
void BgpRouting::NotifyRemoveAddress (uint32_t interface, Ipv4InterfaceAddress address) {}

/* this one we do care */
void BgpRouting::SetIpv4 (Ptr<Ipv4> ipv4) {
    _ipv4 = ipv4;
}

void BgpRouting::PrintRoutingTable (Ptr<OutputStreamWrapper> stream, Time::Unit unit) const {
    std::ostream* os = stream->GetStream();

    *os << "BGP routing table for node" << _ipv4->GetObject<Node>()->GetId()
        << ", time: " << Simulator::Now().As(unit) << std::endl;

    uint8_t print_buffer[4096];

    for (const std::pair<libbgp::BgpRib4EntryKey, libbgp::BgpRib4Entry> &entry_pair : _rib->get()) {
        const libbgp::BgpRib4Entry entry = entry_pair.second;
        *os << Ipv4Address(ntohl(entry.route.getPrefix())) << "/" << (int) entry.route.getLength()
            << " from " << Ipv4Address(ntohl(entry.src_router_id)) << std::endl
            << "Attribues: " << std::endl;
        for (const std::shared_ptr<libbgp::BgpPathAttrib> &attr : entry.attribs) {
            attr->print(1, print_buffer, 4096);
            *os << print_buffer;
        }
    } 
}

}
