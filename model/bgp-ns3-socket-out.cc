#include "bgp-ns3-socket-out.h"

namespace ns3 {

BgpNs3SocketOut::BgpNs3SocketOut(Ptr<Socket> socket) {
    _socket = socket;
}

bool BgpNs3SocketOut::handleOut(const uint8_t *buffer, size_t length) {
    return _socket->Send(buffer, length, 0) == (int) length;
}

}