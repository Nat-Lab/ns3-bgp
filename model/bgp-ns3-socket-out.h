#ifndef BGP_NS3_SOCKET_OUT_H
#define BGP_NS3_SOCKET_OUT_H

#include <libbgp/bgp-out-handler.h>
#include "ns3/socket.h"
#include "ns3/simple-ref-count.h"

namespace ns3 {

class BgpNs3SocketOut : public libbgp::BgpOutHandler, public SimpleRefCount<BgpNs3SocketOut> {
public:
    BgpNs3SocketOut(Ptr<Socket> socket);
    bool handleOut(const uint8_t *buffer, size_t length);
private:
    Ptr<Socket> _socket;
};

}

#endif //BGP_NS3_SOCKET_OUT_H