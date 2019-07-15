#include "bgp-ns3-socket-in.h"
#include "ns3/log.h"

namespace ns3 {

NS_LOG_COMPONENT_DEFINE("BgpNs3SocketIn");

BgpNs3SocketIn::BgpNs3SocketIn(Ptr<Peer> peer) {
    _peer = peer;
}

void BgpNs3SocketIn::HandleRead(Ptr<Socket> socket) {
    int sz = socket->Recv(_recv_buffer, 65535, 0);

    if (sz < 0) {
        NS_LOG_ERROR("error reading from socket " << socket << " for peer peer AS" << 
                     _peer->peer_asn << " (" << _peer->peer_address << ").");
        _peer->_fsm->resetHard();

        socket->Close();
        _peer->_socket->Close();
        _peer->_fsm = nullptr;
        _peer->_socket = nullptr;

        return;
    }

    int fsm_ret = _peer->_fsm->run(_recv_buffer, sz);

    if (fsm_ret <= 0 || fsm_ret == 2) {
        NS_LOG_ERROR("fsm of peer peer AS" << _peer->peer_asn << " (" << 
                     _peer->peer_address << ") returned error.");

        socket->Close();
        _peer->_socket->Close();
        _peer->_fsm = nullptr;
        _peer->_socket = nullptr;

        return;
    }

    return;
}

}