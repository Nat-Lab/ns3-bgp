/**
 * @file bgp-log.cc
 * @author Nato Morichika <nat@nat.moe>
 * @brief libbgp log forwarder.
 * @version 0.1
 * @date 2019-07-13
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#include <string.h>
#include "bgp-log.h"
#include "ns3/log.h"

namespace ns3 {

NS_LOG_COMPONENT_DEFINE("BgpLog");

/**
 * @brief Construct a new BgpLog object
 * 
 * @param owner The owner (prefix) of the log message
 */
BgpLog::BgpLog(const char *owner) {
    this->owner = strdup(owner);
}

BgpLog::~BgpLog() {
    free(owner);
}

void BgpLog::logImpl(const char* str) {
    NS_LOG_INFO(owner << " libbgp: " << str);
}

/**
 * @brief Set the owner (prefix) of the log message.
 * 
 * @param owner 
 */
void BgpLog::SetOwner(const char* owner) {
    free(this->owner);
    this->owner = strdup(owner);
}

}