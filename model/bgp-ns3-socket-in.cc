#include "bgp-ns3-socket-in.h"
#include "ns3/log.h"

namespace ns3 {

NS_LOG_COMPONENT_DEFINE("BgpNs3SocketIn");

BgpNs3SocketIn::BgpNs3SocketIn(Ptr<Session> session) {
    _session = session;
}

void BgpNs3SocketIn::HandleRead(Ptr<Socket> socket) {
    int sz = socket->Recv(_recv_buffer, 65535, 0);

    if (sz <= 0) {
        NS_LOG_ERROR("error reading from socket " << socket << " for peer peer AS" << 
                     _session->peer->peer_asn << " (" << _session->peer->peer_address << ").");

        // reset hard trigger state change, and will be handled.
        _session->fsm->resetHard(); 
        return;
    }

    int fsm_ret = _session->fsm->run(_recv_buffer, sz);

    if (fsm_ret <= 0 || fsm_ret == 2) {
        NS_LOG_ERROR("FSM of peer peer AS" << _session->peer->peer_asn  << " (" << 
                     _session->peer->peer_address << ") returned error (" << fsm_ret << ").");
        // noting to do, state change will be handled.
    }

    return;
}

}