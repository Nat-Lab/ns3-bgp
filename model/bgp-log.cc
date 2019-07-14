#include <string.h>
#include "bgp-log.h"
#include "ns3/log.h"

namespace ns3 {

NS_LOG_COMPONENT_DEFINE("BgpLog");

BgpLog::BgpLog(const char *owner) {
    this->owner = strdup(owner);
}

BgpLog::~BgpLog() {
    free(owner);
}

void BgpLog::logImpl(const char* str) {
    NS_LOG_INFO(owner << " libbgp: " << str);
}

void BgpLog::SetOwner(const char* owner) {
    free(this->owner);
    this->owner = strdup(owner);
}

}