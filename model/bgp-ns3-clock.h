#ifndef BGP_NS3_CLOCK
#define BGP_NS3_CLOCK
#include <libbgp/clock.h>

namespace ns3 {

class BgpNs3Clock : public libbgp::Clock {
    uint64_t getTime() const;
};

}

#endif // BGP_NS3_CLOCK