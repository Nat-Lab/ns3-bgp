/**
 * @file bgp-ns3-socket-in.h
 * @author Nato Morichika <nat@nat.moe>
 * @brief Simple container class for FSM to receive data from peer.
 * @version 0.1
 * @date 2019-07-15
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#ifndef BGP_NS3_SOCKET_IN_H
#define BGP_NS3_SOCKET_IN_H
#include "bgp.h"
#include "ns3/ptr.h"
#include "ns3/simple-ref-count.h"
#include "ns3/socket.h"

namespace ns3 {

/**
 * @brief Simple container class for FSM to receive data from peer.
 * 
 */
class BgpNs3SocketIn : public SimpleRefCount<BgpNs3SocketIn> {
public:
    BgpNs3SocketIn(Ptr<BgpNs3Fsm> fsm);
    void HandleRead(Ptr<Socket> socket);

private:
    Ptr<BgpNs3Fsm> _fsm;
    uint8_t _recv_buffer[65535];
};

}

#endif // BGP_NS3_SOCKET_IN_H