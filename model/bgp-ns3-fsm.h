/**
 * @file bgp-ns3-fsm.h
 * @author Nato Morichika <nat@nat.moe>
 * @brief ns3 smart pointer wrapper for libbgp BGP FSM.
 * @version 0.1
 * @date 2019-07-13
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#ifndef BGP_NS3_FSM_H
#define BGP_NS3_FSM_H
#include <libbgp/bgp-fsm.h>
#include "bgp-log.h"
#include "ns3/simple-ref-count.h"

namespace ns3 {

/**
 * @brief ns3 smart pointer wrapper for libbgp BGP FSM.
 * 
 * Just a libbgp BGP FSM but inheriting ns3 SimpleRefCount.
 * 
 */
class BgpNs3Fsm : public libbgp::BgpFsm, public SimpleRefCount<BgpNs3Fsm> {
public:
    BgpNs3Fsm (libbgp::BgpConfig config);
};

}
#endif // BGP_NS3_FSM_H