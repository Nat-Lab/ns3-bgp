#ifndef BGP_LOG_H
#define BGP_LOG_H
#include <libbgp/bgp-log-handler.h>

namespace ns3 {

class BgpLog : public libbgp::BgpLogHandler {
    BgpLog(const char *owner);
    ~BgpLog();

protected:
    void logImpl(const char* str);
    char *owner;
};

}
#endif // BGP_LOG_H