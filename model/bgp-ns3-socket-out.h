#ifndef BGP_NS3_SOCKET_OUT_H
#define BGP_NS3_SOCKET_OUT_H

#include <libbgp/bgp-out-handler.h>
#include "ns3/socket.h"
#include "ns3/simple-ref-count.h"
#include "ns3/callback.h"

namespace ns3 {

class BgpNs3SocketOut : public libbgp::BgpOutHandler, public SimpleRefCount<BgpNs3SocketOut> {
public:
    BgpNs3SocketOut(Ptr<Socket> socket, Callback<void, Ptr<Socket>, int, int> state_change_cb);
    bool handleOut(const uint8_t *buffer, size_t length);
    void notifyStateChange(int old_state, int new_state);
    void setStateChangeCallback(Callback<void, Ptr<Socket>, int, int> state_change_cb);
private:
    Ptr<Socket> _socket;
    Callback<void, Ptr<Socket>, int, int> _state_change_cb;
};

}

#endif //BGP_NS3_SOCKET_OUT_H