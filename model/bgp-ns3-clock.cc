#include "bgp-ns3-clock.h"
#include "ns3/simulator.h"

namespace ns3 {

uint64_t BgpNs3Clock::getTime() const {
    return (uint64_t) Simulator::Now().GetSeconds();
}

}