/**
 * @file bgp-log.h
 * @author Nato Morichika <nat@nat.moe>
 * @brief libbgp log forwarder.
 * @version 0.1
 * @date 2019-07-13
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#ifndef BGP_LOG_H
#define BGP_LOG_H
#include <libbgp/bgp-log-handler.h>
#include "ns3/simple-ref-count.h"

namespace ns3 {

/**
 * @brief The libbgp log forwarder class.
 * 
 */
class BgpLog : public libbgp::BgpLogHandler, public SimpleRefCount<BgpLog> {
public:
    BgpLog(const char *owner);
    ~BgpLog();

    void SetOwner(const char *owner);

protected:
    void logImpl(const char* str);
    char *owner;
};

}
#endif // BGP_LOG_H