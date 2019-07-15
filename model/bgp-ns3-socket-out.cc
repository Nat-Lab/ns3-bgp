#include "bgp-ns3-socket-out.h"

namespace ns3 {

BgpNs3SocketOut::BgpNs3SocketOut(Ptr<Socket> socket, Callback<void, Ptr<Socket>, int, int> state_change_cb) {
    _socket = socket;
    _state_change_cb = state_change_cb;
}

bool BgpNs3SocketOut::handleOut(const uint8_t *buffer, size_t length) {
    return _socket->Send(buffer, length, 0) == (int) length;
}

void BgpNs3SocketOut::notifyStateChange(int old_state, int new_state) {
    _state_change_cb(_socket, old_state, new_state);
}

void BgpNs3SocketOut::setStateChangeCallback(Callback<void, Ptr<Socket>, int, int> state_change_cb) {
    _state_change_cb = state_change_cb;
}

}