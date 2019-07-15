/**
 * @file bgp-ns3-clock.cc
 * @author Nato Morichika <nat@nat.moe>
 * @brief libbgp Clock interface for ns3.
 * @version 0.1
 * @date 2019-07-15
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#include "bgp-ns3-clock.h"
#include "ns3/simulator.h"

namespace ns3 {

/**
 * @brief Get the time in simulator.
 * 
 * @return uint64_t time.
 */
uint64_t BgpNs3Clock::getTime() const {
    return (uint64_t) Simulator::Now().GetSeconds();
}

}