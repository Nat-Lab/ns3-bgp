/**
 * @file bgp-ns3-fsm.cc
 * @author Nato Morichika <nat@nat.moe>
 * @brief ns3 smart pointer wrapper for libbgp BGP FSM.
 * @version 0.1
 * @date 2019-07-13
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#include "bgp-ns3-fsm.h"
#include "ns3/ptr.h"

namespace ns3 {

/**
 * @brief Construct a new ns3-ptr wrapped libbgp BgpFsm
 * 
 * @param config BgpConfig to forward to BgpFsm.
 * @param logger logger to ref/unref when destroy.
 */
BgpNs3Fsm::BgpNs3Fsm(libbgp::BgpConfig config, Ptr<BgpLog> logger) : libbgp::BgpFsm(config) {
    _logger = logger;
}

}