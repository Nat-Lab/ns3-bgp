#ifndef BGP_NS3_SOCKET_IN_H
#define BGP_NS3_SOCKET_IN_H
#include "bgp.h"
#include "ns3/ptr.h"
#include "ns3/simple-ref-count.h"
#include "ns3/socket.h"

namespace ns3 {

class Session;

class BgpNs3SocketIn : public SimpleRefCount<BgpNs3SocketIn> {
public:
    BgpNs3SocketIn(Ptr<Session> session);
    void HandleRead(Ptr<Socket> socket);

private:
    Ptr<Session> _session;
    uint8_t _recv_buffer[65535];
};

}

#endif // BGP_NS3_SOCKET_IN_H