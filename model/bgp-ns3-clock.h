/**
 * @file bgp-ns3-clock.h
 * @author Nato Morichika <nat@nat.moe>
 * @brief libbgp Clock interface for ns3.
 * @version 0.1
 * @date 2019-07-15
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#ifndef BGP_NS3_CLOCK
#define BGP_NS3_CLOCK
#include <libbgp/clock.h>

namespace ns3 {

/**
 * @brief The clock interface. See libbgp document.
 * 
 */
class BgpNs3Clock : public libbgp::Clock {
    uint64_t getTime() const;
};

}

#endif // BGP_NS3_CLOCK