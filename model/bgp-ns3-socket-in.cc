/**
 * @file bgp-ns3-socket-in.cc
 * @author Nato Morichika <nat@nat.moe>
 * @brief Simple container class for FSM to receive data from peer.
 * @version 0.1
 * @date 2019-07-15
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#include "bgp-ns3-socket-in.h"
#include "ns3/log.h"

namespace ns3 {

/**
 * @brief Construct the container.
 * 
 * @param fsm FSM to use.
 */
BgpNs3SocketIn::BgpNs3SocketIn(Ptr<BgpNs3Fsm> fsm) {
    _fsm = fsm;
}

/**
 * @brief Handle reading from socket.
 * 
 * @param socket socket to read from.
 */
void BgpNs3SocketIn::HandleRead(Ptr<Socket> socket) {
    int sz = socket->Recv(_recv_buffer, 65535, 0);

    if (sz <= 0) {
        _fsm->resetHard(); 
        return;
    }

    _fsm->run(_recv_buffer, sz);
}

}