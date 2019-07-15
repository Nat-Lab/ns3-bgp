/**
 * @file bgp-ns3-socket-out.cc
 * @author Nato Morichika <nat@nat.moe>
 * @brief Simple container class for FSM to send data to peer.
 * @version 0.1
 * @date 2019-07-15
 * 
 * @copyright Copyright (c) 2019
 * 
 */
#include "bgp-ns3-socket-out.h"

namespace ns3 {

/**
 * @brief Construct the container.
 * 
 * @param socket socket to write to.
 * @param state_change_cb Callback to notify FSM state changes.
 */
BgpNs3SocketOut::BgpNs3SocketOut(Ptr<Socket> socket, Callback<void, Ptr<Socket>, int, int> state_change_cb) {
    _socket = socket;
    _state_change_cb = state_change_cb;
}

/**
 * @brief Handle output from libbgp. See libbgp document.
 * 
 * @param buffer Packet buffer.
 * @param length Buffer size.
 * @return true Packet written.
 * @return false Failed to write packet.
 */
bool BgpNs3SocketOut::handleOut(const uint8_t *buffer, size_t length) {
    return _socket->Send(buffer, length, 0) == (int) length;
}

/**
 * @brief Handle state change notification from libbgp. See libbgp document.
 * 
 * @param old_state Old state.
 * @param new_state New state.
 */
void BgpNs3SocketOut::notifyStateChange(int old_state, int new_state) {
    _state_change_cb(_socket, old_state, new_state);
}

/**
 * @brief Set callback to use when FSM change state.
 * 
 * @param state_change_cb Callback.
 */
void BgpNs3SocketOut::setStateChangeCallback(Callback<void, Ptr<Socket>, int, int> state_change_cb) {
    _state_change_cb = state_change_cb;
}

}