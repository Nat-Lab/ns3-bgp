#include <libbgp/bgp-log-handler.h>

class BgpLog : public libbgp::BgpLogHandler {
    BgpLog(const char *owner);
    ~BgpLog();

protected:
    void logImpl(const char* str);
    char *owner;
};