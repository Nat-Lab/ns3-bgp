/**
 * @file bgp-example.cc
 * @author Nato Morichika <nat@nat.moe>
 * @brief A simple BGP setup example with two nodes peering with each other.
 * @version 0.1
 * @date 2019-07-15
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#include "ns3/core-module.h"
#include "ns3/csma-module.h"
#include "ns3/applications-module.h"
#include "ns3/internet-module.h"
#include "ns3/bgp.h"
#include "ns3/ptr.h"

using namespace ns3;

int main () {
    // Create nodes.
    NodeContainer n;
    n.Create(2);

    // We need Internet stack on nodes.
    InternetStackHelper internet;
    internet.Install(n);

    // We need network network adapter on nodes.
    CsmaHelper csma;
    NetDeviceContainer d = csma.Install(n);

    // Assign IP to adapters.
    Ipv4AddressHelper ipv4;
    ipv4.SetBase("10.0.0.0", "255.255.255.0");
    Ipv4InterfaceContainer i = ipv4.Assign(d);

    // create applications
    Ptr<Bgp> bgp_app_1 = CreateObject<Bgp>();
    bgp_app_1->SetAttribute("RouterID", Ipv4AddressValue(i.GetAddress(0)));
    // make libbgp verbose.
    bgp_app_1->SetAttribute("LibbgpLogLevel", EnumValue(libbgp::DEBUG)); 

    // create peer for app1
    Peer bgp_app_1_peer;
    bgp_app_1_peer.peer_address = i.GetAddress(1);
    bgp_app_1_peer.peer_asn = 65001;
    bgp_app_1_peer.local_asn = 65000;
    bgp_app_1_peer.passive = false;

    // add the peer config to app1.
    bgp_app_1->AddPeer(bgp_app_1_peer);

    // install app1 on node0. When BGP is installed on a node, node's routing
    // protocol will be replace by a Ipv4ListRouting that contains BgpRouting
    // and Ipv4StaticRouting.
    n.Get(0)->AddApplication(bgp_app_1);

    Ptr<Bgp> bgp_app_2 = CreateObject<Bgp>();
    bgp_app_2->SetAttribute("RouterID", Ipv4AddressValue(i.GetAddress(1)));

    // add a route to node's routing table
    bgp_app_2->AddRoute(Ipv4Address("10.1.0.0"), Ipv4Mask("/24"), i.GetAddress(1));

    // create peer for app2
    Peer bgp_app_2_peer;
    bgp_app_2_peer.peer_address = i.GetAddress(0);
    bgp_app_2_peer.peer_asn = 65000;
    bgp_app_2_peer.local_asn = 65001;
    bgp_app_2_peer.passive = false;

    // add the peer config to app1.
    bgp_app_2->AddPeer(bgp_app_2_peer);

    // install app2 on node1, When BGP is installed on a node, node's routing
    // protocol will be replace by a Ipv4ListRouting that contains BgpRouting
    // and Ipv4StaticRouting.
    n.Get(1)->AddApplication(bgp_app_2);

    // set when to stop
    bgp_app_1->SetStopTime(Seconds(100));
    bgp_app_2->SetStopTime(Seconds(100));

    Simulator::Run();
    Simulator::Stop(Seconds(100));
    Simulator::Destroy();
    return 0;
}