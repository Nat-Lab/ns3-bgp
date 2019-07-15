#include "bgp-ns3-socket-in.h"
#include "ns3/log.h"

namespace ns3 {

NS_LOG_COMPONENT_DEFINE("BgpNs3SocketIn");

BgpNs3SocketIn::BgpNs3SocketIn(Ptr<BgpNs3Fsm> fsm) {
    _fsm = fsm;
}

void BgpNs3SocketIn::HandleRead(Ptr<Socket> socket) {
    int sz = socket->Recv(_recv_buffer, 65535, 0);

    if (sz <= 0) {
        _fsm->resetHard(); 
        return;
    }

    _fsm->run(_recv_buffer, sz);
}

}