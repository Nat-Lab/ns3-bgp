<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>bgp-bad-message.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-bad-message_8cc</filename>
    <includes id="bgp-bad-message_8h" name="bgp-bad-message.h" local="yes" imported="no">bgp-bad-message.h</includes>
    <includes id="bgp-errcode_8h" name="bgp-errcode.h" local="yes" imported="no">bgp-errcode.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-bad-message.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-bad-message_8h</filename>
    <includes id="bgp-message_8h" name="bgp-message.h" local="yes" imported="no">bgp-message.h</includes>
    <class kind="class">libbgp::BgpBadMessage</class>
  </compound>
  <compound kind="file">
    <name>bgp-capability.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-capability_8cc</filename>
    <includes id="bgp-capability_8h" name="bgp-capability.h" local="yes" imported="no">bgp-capability.h</includes>
    <includes id="bgp-errcode_8h" name="bgp-errcode.h" local="yes" imported="no">bgp-errcode.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-capability.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-capability_8h</filename>
    <includes id="serializable_8h" name="serializable.h" local="yes" imported="no">serializable.h</includes>
    <class kind="class">libbgp::BgpCapability</class>
    <class kind="class">libbgp::BgpCapability4BytesAsn</class>
    <class kind="class">libbgp::BgpCapabilityUnknow</class>
    <member kind="enumeration">
      <type></type>
      <name>BgpCapabilityCode</name>
      <anchorfile>bgp-capability_8h.html</anchorfile>
      <anchor>a37803a240f3ff7bb2a54bb7c5291a013</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-config.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-config_8h</filename>
    <includes id="clock_8h" name="clock.h" local="yes" imported="no">clock.h</includes>
    <includes id="bgp-rib_8h" name="bgp-rib.h" local="yes" imported="no">bgp-rib.h</includes>
    <includes id="bgp-filter_8h" name="bgp-filter.h" local="yes" imported="no">bgp-filter.h</includes>
    <includes id="bgp-out-handler_8h" name="bgp-out-handler.h" local="yes" imported="no">bgp-out-handler.h</includes>
    <includes id="bgp-log-handler_8h" name="bgp-log-handler.h" local="yes" imported="no">bgp-log-handler.h</includes>
    <includes id="route-event-bus_8h" name="route-event-bus.h" local="yes" imported="no">route-event-bus.h</includes>
    <class kind="struct">libbgp::BgpConfig</class>
    <member kind="typedef">
      <type>struct libbgp::BgpConfig</type>
      <name>BgpConfig</name>
      <anchorfile>bgp-config_8h.html</anchorfile>
      <anchor>a93f8c26d1704a298fbffad663026da43</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-errcode.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-errcode_8cc</filename>
    <includes id="bgp-errcode_8h" name="bgp-errcode.h" local="yes" imported="no">bgp-errcode.h</includes>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_error_code_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>a08d90c5112845d580006e7f1798fb890</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_header_error_subcode_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>a4a26c9a33ba204b6d06a0324230fd51c</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_open_error_subcode_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>a7f07e4c9388430bb273834855b5ef8fa</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_update_error_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>a98d65a3916d179c58b4b79114aed3ae3</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_fsm_error_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>ac91f9c940cee8d0dd46cd21318a95d13</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_cease_error_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>a26b0aa32b3bbb193308ec619fe76b30e</anchor>
      <arglist>[]</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-errcode.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-errcode_8h</filename>
    <member kind="enumeration">
      <type></type>
      <name>BgpErrorCode</name>
      <anchorfile>bgp-errcode_8h.html</anchorfile>
      <anchor>ac886af2b217a5b003e59d3d00052974a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpHeaderErrorSubcode</name>
      <anchorfile>bgp-errcode_8h.html</anchorfile>
      <anchor>acc76f32607640ba99835c949c744975c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpOpenErrorSubcode</name>
      <anchorfile>bgp-errcode_8h.html</anchorfile>
      <anchor>a341f8f874ec294de412d2d36e9578b00</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpUpdateErrorSubcode</name>
      <anchorfile>bgp-errcode_8h.html</anchorfile>
      <anchor>a50f7a37cb24789c95a09e31cc37c5bdd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpFsmErrorSubcode</name>
      <anchorfile>bgp-errcode_8h.html</anchorfile>
      <anchor>a7555e4eecf19a5f43569bd7b0e87a6ff</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpCeaseErrorSubcode</name>
      <anchorfile>bgp-errcode_8h.html</anchorfile>
      <anchor>a4daf25d0c2f5cea0e59d15c5a92219d7</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-error.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-error_8cc</filename>
    <includes id="bgp-error_8h" name="bgp-error.h" local="yes" imported="no">bgp-error.h</includes>
    <member kind="function">
      <type>void</type>
      <name>_bgp_error</name>
      <anchorfile>bgp-error_8cc.html</anchorfile>
      <anchor>adc11d21b8fd745e542a9f302dc49bafe</anchor>
      <arglist>(const char *format_str,...)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>get_bgp_errors</name>
      <anchorfile>bgp-error_8cc.html</anchorfile>
      <anchor>ac876eb3ce85c8b6079fd436fd8e4fc41</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear_bgp_errors</name>
      <anchorfile>bgp-error_8cc.html</anchorfile>
      <anchor>a8a69b63fe54c19bd95bcfd867ea6eb0a</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-error.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-error_8h</filename>
    <member kind="function">
      <type>void</type>
      <name>_bgp_error</name>
      <anchorfile>bgp-error_8cc.html</anchorfile>
      <anchor>adc11d21b8fd745e542a9f302dc49bafe</anchor>
      <arglist>(const char *format_str,...)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>get_bgp_errors</name>
      <anchorfile>bgp-error_8cc.html</anchorfile>
      <anchor>ac876eb3ce85c8b6079fd436fd8e4fc41</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear_bgp_errors</name>
      <anchorfile>bgp-error_8cc.html</anchorfile>
      <anchor>a8a69b63fe54c19bd95bcfd867ea6eb0a</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-filter.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-filter_8cc</filename>
    <includes id="bgp-filter_8h" name="bgp-filter.h" local="yes" imported="no">bgp-filter.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-filter.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-filter_8h</filename>
    <includes id="route_8h" name="route.h" local="yes" imported="no">route.h</includes>
    <class kind="class">libbgp::BgpFilterRule</class>
    <class kind="class">libbgp::BgpFilterRules</class>
    <member kind="enumeration">
      <type></type>
      <name>BgpFilterOP</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a09b283ade47782bc0c08687105402293</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NOP</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a09b283ade47782bc0c08687105402293a79774da657eb06abce97987173efec06</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ACCEPT</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a09b283ade47782bc0c08687105402293aa6ab08553612c9644c30f59750d17008</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>REJECT</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a09b283ade47782bc0c08687105402293ad422690559350ccf4cb4669c598983e4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpFilterType</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a82b904d0d0a61391e89f90a5bd87a83b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>STRICT</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a82b904d0d0a61391e89f90a5bd87a83bada57eab5f4d63c8dab6e77b016488f38</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LOOSE</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a82b904d0d0a61391e89f90a5bd87a83ba1c55aa16021d15286787691f7c696ef3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-fsm.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-fsm_8cc</filename>
    <includes id="bgp-fsm_8h" name="bgp-fsm.h" local="yes" imported="no">bgp-fsm.h</includes>
    <includes id="realtime-clock_8h" name="realtime-clock.h" local="yes" imported="no">realtime-clock.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-fsm.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-fsm_8h</filename>
    <includes id="clock_8h" name="clock.h" local="yes" imported="no">clock.h</includes>
    <includes id="bgp-rib_8h" name="bgp-rib.h" local="yes" imported="no">bgp-rib.h</includes>
    <includes id="bgp-config_8h" name="bgp-config.h" local="yes" imported="no">bgp-config.h</includes>
    <includes id="bgp-sink_8h" name="bgp-sink.h" local="yes" imported="no">bgp-sink.h</includes>
    <includes id="route-event-receiver_8h" name="route-event-receiver.h" local="yes" imported="no">route-event-receiver.h</includes>
    <includes id="bgp_8h" name="bgp.h" local="yes" imported="no">bgp.h</includes>
    <class kind="class">libbgp::BgpFsm</class>
    <member kind="enumeration">
      <type></type>
      <name>BgpState</name>
      <anchorfile>bgp-fsm_8h.html</anchorfile>
      <anchor>af811264836a8ec871fca16c35ef11598</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-keepalive-message.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-keepalive-message_8cc</filename>
    <includes id="bgp-keepalive-message_8h" name="bgp-keepalive-message.h" local="yes" imported="no">bgp-keepalive-message.h</includes>
    <includes id="bgp-errcode_8h" name="bgp-errcode.h" local="yes" imported="no">bgp-errcode.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-keepalive-message.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-keepalive-message_8h</filename>
    <includes id="bgp-message_8h" name="bgp-message.h" local="yes" imported="no">bgp-message.h</includes>
    <includes id="bgp-log-handler_8h" name="bgp-log-handler.h" local="yes" imported="no">bgp-log-handler.h</includes>
    <class kind="class">libbgp::BgpKeepaliveMessage</class>
  </compound>
  <compound kind="file">
    <name>bgp-log-handler.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-log-handler_8cc</filename>
    <includes id="bgp-log-handler_8h" name="bgp-log-handler.h" local="yes" imported="no">bgp-log-handler.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-log-handler.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-log-handler_8h</filename>
    <includes id="serializable_8h" name="serializable.h" local="yes" imported="no">serializable.h</includes>
    <class kind="class">libbgp::BgpLogHandler</class>
    <member kind="enumeration">
      <type></type>
      <name>LogLevel</name>
      <anchorfile>bgp-log-handler_8h.html</anchorfile>
      <anchor>a41e0a5c85194e452e44f75b1015b6f1e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-message.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-message_8h</filename>
    <includes id="serializable_8h" name="serializable.h" local="yes" imported="no">serializable.h</includes>
    <includes id="bgp-log-handler_8h" name="bgp-log-handler.h" local="yes" imported="no">bgp-log-handler.h</includes>
    <class kind="class">libbgp::BgpMessage</class>
    <member kind="enumeration">
      <type></type>
      <name>BgpMessageType</name>
      <anchorfile>bgp-message_8h.html</anchorfile>
      <anchor>a2a8c0537b0303c3fa057be33f427a7cc</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-notification-message.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-notification-message_8cc</filename>
    <includes id="bgp-notification-message_8h" name="bgp-notification-message.h" local="yes" imported="no">bgp-notification-message.h</includes>
    <includes id="bgp-errcode_8h" name="bgp-errcode.h" local="yes" imported="no">bgp-errcode.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-notification-message.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-notification-message_8h</filename>
    <includes id="bgp-message_8h" name="bgp-message.h" local="yes" imported="no">bgp-message.h</includes>
    <class kind="class">libbgp::BgpNotificationMessage</class>
  </compound>
  <compound kind="file">
    <name>bgp-open-message.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-open-message_8cc</filename>
    <includes id="bgp-open-message_8h" name="bgp-open-message.h" local="yes" imported="no">bgp-open-message.h</includes>
    <includes id="bgp-errcode_8h" name="bgp-errcode.h" local="yes" imported="no">bgp-errcode.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-open-message.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-open-message_8h</filename>
    <includes id="bgp-message_8h" name="bgp-message.h" local="yes" imported="no">bgp-message.h</includes>
    <includes id="bgp-capability_8h" name="bgp-capability.h" local="yes" imported="no">bgp-capability.h</includes>
    <class kind="class">libbgp::BgpOpenMessage</class>
  </compound>
  <compound kind="file">
    <name>bgp-out-handler.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-out-handler_8h</filename>
    <class kind="class">libbgp::BgpOutHandler</class>
  </compound>
  <compound kind="file">
    <name>bgp-packet.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-packet_8cc</filename>
    <includes id="bgp-packet_8h" name="bgp-packet.h" local="yes" imported="no">bgp-packet.h</includes>
    <includes id="bgp_8h" name="bgp.h" local="yes" imported="no">bgp.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-packet.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-packet_8h</filename>
    <includes id="serializable_8h" name="serializable.h" local="yes" imported="no">serializable.h</includes>
    <includes id="bgp-message_8h" name="bgp-message.h" local="yes" imported="no">bgp-message.h</includes>
    <class kind="class">libbgp::BgpPacket</class>
  </compound>
  <compound kind="file">
    <name>bgp-path-attrib.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-path-attrib_8cc</filename>
    <includes id="bgp-path-attrib_8h" name="bgp-path-attrib.h" local="yes" imported="no">bgp-path-attrib.h</includes>
    <includes id="bgp-errcode_8h" name="bgp-errcode.h" local="yes" imported="no">bgp-errcode.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-path-attrib.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-path-attrib_8h</filename>
    <includes id="serializable_8h" name="serializable.h" local="yes" imported="no">serializable.h</includes>
    <class kind="class">libbgp::BgpPathAttrib</class>
    <class kind="class">libbgp::BgpPathAttribOrigin</class>
    <class kind="class">libbgp::BgpAsPathSegment</class>
    <class kind="class">libbgp::BgpPathAttribAsPath</class>
    <class kind="class">libbgp::BgpPathAttribNexthop</class>
    <class kind="class">libbgp::BgpPathAttribMed</class>
    <class kind="class">libbgp::BgpPathAttribLocalPref</class>
    <class kind="class">libbgp::BgpPathAttribAtomicAggregate</class>
    <class kind="class">libbgp::BgpPathAttribAggregator</class>
    <class kind="class">libbgp::BgpPathAttribAs4Path</class>
    <class kind="class">libbgp::BgpPathAttribAs4Aggregator</class>
    <class kind="class">libbgp::BgpPathAttribCommunity</class>
    <member kind="enumeration">
      <type></type>
      <name>BgpPathAttribType</name>
      <anchorfile>bgp-path-attrib_8h.html</anchorfile>
      <anchor>a6012071f58111fa211a6e7190cee644f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpPathAttribOrigins</name>
      <anchorfile>bgp-path-attrib_8h.html</anchorfile>
      <anchor>aa2583d98c353d2190bf636f3eda36dab</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpAsPathSegmentType</name>
      <anchorfile>bgp-path-attrib_8h.html</anchorfile>
      <anchor>a0fd954a29dfd80467f2d3d8880a76586</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>bgp-rib.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-rib_8cc</filename>
    <includes id="bgp-rib_8h" name="bgp-rib.h" local="yes" imported="no">bgp-rib.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-rib.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-rib_8h</filename>
    <includes id="route_8h" name="route.h" local="yes" imported="no">route.h</includes>
    <includes id="bgp-path-attrib_8h" name="bgp-path-attrib.h" local="yes" imported="no">bgp-path-attrib.h</includes>
    <class kind="class">libbgp::BgpRibEntry</class>
    <class kind="class">libbgp::BgpRib</class>
  </compound>
  <compound kind="file">
    <name>bgp-sink.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-sink_8cc</filename>
    <includes id="bgp-sink_8h" name="bgp-sink.h" local="yes" imported="no">bgp-sink.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-sink.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-sink_8h</filename>
    <includes id="bgp-packet_8h" name="bgp-packet.h" local="yes" imported="no">bgp-packet.h</includes>
    <includes id="bgp-log-handler_8h" name="bgp-log-handler.h" local="yes" imported="no">bgp-log-handler.h</includes>
    <class kind="class">libbgp::BgpSink</class>
  </compound>
  <compound kind="file">
    <name>bgp-update-message.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-update-message_8cc</filename>
    <includes id="bgp-update-message_8h" name="bgp-update-message.h" local="yes" imported="no">bgp-update-message.h</includes>
    <includes id="bgp-errcode_8h" name="bgp-errcode.h" local="yes" imported="no">bgp-errcode.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-update-message.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-update-message_8h</filename>
    <includes id="route_8h" name="route.h" local="yes" imported="no">route.h</includes>
    <includes id="bgp-message_8h" name="bgp-message.h" local="yes" imported="no">bgp-message.h</includes>
    <includes id="bgp-path-attrib_8h" name="bgp-path-attrib.h" local="yes" imported="no">bgp-path-attrib.h</includes>
    <class kind="class">libbgp::BgpUpdateMessage</class>
  </compound>
  <compound kind="file">
    <name>bgp.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp_8h</filename>
    <includes id="bgp-message_8h" name="bgp-message.h" local="yes" imported="no">bgp-message.h</includes>
    <includes id="bgp-packet_8h" name="bgp-packet.h" local="yes" imported="no">bgp-packet.h</includes>
    <includes id="bgp-bad-message_8h" name="bgp-bad-message.h" local="yes" imported="no">bgp-bad-message.h</includes>
    <includes id="bgp-open-message_8h" name="bgp-open-message.h" local="yes" imported="no">bgp-open-message.h</includes>
    <includes id="bgp-update-message_8h" name="bgp-update-message.h" local="yes" imported="no">bgp-update-message.h</includes>
    <includes id="bgp-keepalive-message_8h" name="bgp-keepalive-message.h" local="yes" imported="no">bgp-keepalive-message.h</includes>
    <includes id="bgp-notification-message_8h" name="bgp-notification-message.h" local="yes" imported="no">bgp-notification-message.h</includes>
    <includes id="bgp-path-attrib_8h" name="bgp-path-attrib.h" local="yes" imported="no">bgp-path-attrib.h</includes>
    <includes id="bgp-errcode_8h" name="bgp-errcode.h" local="yes" imported="no">bgp-errcode.h</includes>
  </compound>
  <compound kind="file">
    <name>clock.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>clock_8h</filename>
    <class kind="class">libbgp::Clock</class>
  </compound>
  <compound kind="file">
    <name>fd-out-handler.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>fd-out-handler_8cc</filename>
    <includes id="fd-out-handler_8h" name="fd-out-handler.h" local="yes" imported="no">fd-out-handler.h</includes>
  </compound>
  <compound kind="file">
    <name>fd-out-handler.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>fd-out-handler_8h</filename>
    <includes id="bgp-out-handler_8h" name="bgp-out-handler.h" local="yes" imported="no">bgp-out-handler.h</includes>
    <class kind="class">libbgp::FdOutHandler</class>
  </compound>
  <compound kind="file">
    <name>realtime-clock.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>realtime-clock_8cc</filename>
    <includes id="realtime-clock_8h" name="realtime-clock.h" local="yes" imported="no">realtime-clock.h</includes>
  </compound>
  <compound kind="file">
    <name>realtime-clock.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>realtime-clock_8h</filename>
    <includes id="clock_8h" name="clock.h" local="yes" imported="no">clock.h</includes>
    <class kind="class">libbgp::RealtimeClock</class>
  </compound>
  <compound kind="file">
    <name>route-event-bus.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>route-event-bus_8cc</filename>
    <includes id="route-event-bus_8h" name="route-event-bus.h" local="yes" imported="no">route-event-bus.h</includes>
  </compound>
  <compound kind="file">
    <name>route-event-bus.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>route-event-bus_8h</filename>
    <includes id="route-event_8h" name="route-event.h" local="yes" imported="no">route-event.h</includes>
    <includes id="route-event-receiver_8h" name="route-event-receiver.h" local="yes" imported="no">route-event-receiver.h</includes>
    <class kind="class">libbgp::RouteEventBus</class>
  </compound>
  <compound kind="file">
    <name>route-event-receiver.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>route-event-receiver_8h</filename>
    <includes id="route-event-bus_8h" name="route-event-bus.h" local="yes" imported="no">route-event-bus.h</includes>
    <class kind="class">libbgp::RouteEventReceiver</class>
  </compound>
  <compound kind="file">
    <name>route-event.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>route-event_8h</filename>
    <includes id="bgp-path-attrib_8h" name="bgp-path-attrib.h" local="yes" imported="no">bgp-path-attrib.h</includes>
    <includes id="bgp-update-message_8h" name="bgp-update-message.h" local="yes" imported="no">bgp-update-message.h</includes>
    <class kind="class">libbgp::RouteEvent</class>
    <class kind="class">libbgp::RouteAddEvent</class>
    <class kind="class">libbgp::RouteWithdrawEvent</class>
    <class kind="class">libbgp::RouteCollisionEvent</class>
    <member kind="enumeration">
      <type></type>
      <name>RouteEventType</name>
      <anchorfile>route-event_8h.html</anchorfile>
      <anchor>ae8c750a6779e877ff88ee962ff8dab57</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>route.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>route_8cc</filename>
    <includes id="route_8h" name="route.h" local="yes" imported="no">route.h</includes>
    <member kind="function">
      <type>uint32_t</type>
      <name>cidr_to_mask</name>
      <anchorfile>route_8cc.html</anchorfile>
      <anchor>a3adae39480242b265fc4241dbe879114</anchor>
      <arglist>(uint8_t cidr)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>route.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>route_8h</filename>
    <class kind="class">libbgp::Route</class>
    <member kind="function">
      <type>uint32_t</type>
      <name>cidr_to_mask</name>
      <anchorfile>route_8cc.html</anchorfile>
      <anchor>a3adae39480242b265fc4241dbe879114</anchor>
      <arglist>(uint8_t cidr)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>serializable.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>serializable_8cc</filename>
    <includes id="serializable_8h" name="serializable.h" local="yes" imported="no">serializable.h</includes>
  </compound>
  <compound kind="file">
    <name>serializable.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>serializable_8h</filename>
    <includes id="bgp-log-handler_8h" name="bgp-log-handler.h" local="yes" imported="no">bgp-log-handler.h</includes>
    <class kind="class">libbgp::Serializable</class>
  </compound>
  <compound kind="file">
    <name>value-op.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>value-op_8h</filename>
    <member kind="function">
      <type>T</type>
      <name>getValue</name>
      <anchorfile>value-op_8h.html</anchorfile>
      <anchor>a0656dabe109637d39ddf9d89b595ee42</anchor>
      <arglist>(const uint8_t **buffer)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>putValue</name>
      <anchorfile>value-op_8h.html</anchorfile>
      <anchor>a50ab40467636087fb8e8787703f5e3e6</anchor>
      <arglist>(uint8_t **buffer, T value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpAsPathSegment</name>
    <filename>classlibbgp_1_1BgpAsPathSegment.html</filename>
    <member kind="function">
      <type></type>
      <name>BgpAsPathSegment</name>
      <anchorfile>classlibbgp_1_1BgpAsPathSegment.html</anchorfile>
      <anchor>af8a74c24a32d475ee1d6b509f9906905</anchor>
      <arglist>(bool is_4b, uint8_t type)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>getCount</name>
      <anchorfile>classlibbgp_1_1BgpAsPathSegment.html</anchorfile>
      <anchor>a65b6e1f27bf90f5b4f7a25ac016c501c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>prepend</name>
      <anchorfile>classlibbgp_1_1BgpAsPathSegment.html</anchorfile>
      <anchor>a8e735fa5b8c7d5219ea033bb81520bd8</anchor>
      <arglist>(uint32_t asn)</arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>is_4b</name>
      <anchorfile>classlibbgp_1_1BgpAsPathSegment.html</anchorfile>
      <anchor>a3ba3e1a310ddebdab66658fd2a312e18</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>type</name>
      <anchorfile>classlibbgp_1_1BgpAsPathSegment.html</anchorfile>
      <anchor>a47a7d8a13b454352b0296165982be784</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; uint32_t &gt;</type>
      <name>value</name>
      <anchorfile>classlibbgp_1_1BgpAsPathSegment.html</anchorfile>
      <anchor>acb171d66f3da4436349cce335b836778</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpBadMessage</name>
    <filename>classlibbgp_1_1BgpBadMessage.html</filename>
    <base>libbgp::BgpMessage</base>
    <member kind="function">
      <type></type>
      <name>BgpBadMessage</name>
      <anchorfile>classlibbgp_1_1BgpBadMessage.html</anchorfile>
      <anchor>a1be0cc83cdfce70abbef07caec10c5b5</anchor>
      <arglist>(BgpLogHandler *logger, uint8_t type)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpBadMessage.html</anchorfile>
      <anchor>afe023ae8823046b73a321cd2386fe7ca</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpBadMessage.html</anchorfile>
      <anchor>a6d222f8b11dfec941d4f7ef15a5b7f13</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpBadMessage.html</anchorfile>
      <anchor>abd261c02d83dc77ab08b67513928b278</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpCapability</name>
    <filename>classlibbgp_1_1BgpCapability.html</filename>
    <base>libbgp::Serializable</base>
    <member kind="function">
      <type></type>
      <name>BgpCapability</name>
      <anchorfile>classlibbgp_1_1BgpCapability.html</anchorfile>
      <anchor>ad7e1a42daea3e263b4c8ec5b9bcf890a</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpCapability.html</anchorfile>
      <anchor>a7c22c675ea987a2b09c345c332a60e87</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpCapability.html</anchorfile>
      <anchor>ac85451bcd73c5577eea1681f89dc0b7f</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const =0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>ssize_t</type>
      <name>parseHeader</name>
      <anchorfile>classlibbgp_1_1BgpCapability.html</anchorfile>
      <anchor>ac36cb4f0638b5a118b5d111f4b26fc6b</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>uint8_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpCapability.html</anchorfile>
      <anchor>a1995251f032fcac935a38d276e203bbe</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpCapability4BytesAsn</name>
    <filename>classlibbgp_1_1BgpCapability4BytesAsn.html</filename>
    <base>libbgp::BgpCapability</base>
    <member kind="function">
      <type></type>
      <name>BgpCapability4BytesAsn</name>
      <anchorfile>classlibbgp_1_1BgpCapability4BytesAsn.html</anchorfile>
      <anchor>ae7785a2cb617d11b4e80a4c1907bb9d6</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpCapability4BytesAsn.html</anchorfile>
      <anchor>a13466b96b4b3936c3067d02f7fc14b3a</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpCapability4BytesAsn.html</anchorfile>
      <anchor>a52f73c9019e78ab483be6c34180d875a</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpCapability4BytesAsn.html</anchorfile>
      <anchor>a7719c202b5a1dd34d2a33d5b7f7cd9bd</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>my_asn</name>
      <anchorfile>classlibbgp_1_1BgpCapability4BytesAsn.html</anchorfile>
      <anchor>ab48afb805bb1745635833fe354938fdc</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpCapabilityUnknow</name>
    <filename>classlibbgp_1_1BgpCapabilityUnknow.html</filename>
    <base>libbgp::BgpCapability</base>
    <member kind="function">
      <type></type>
      <name>BgpCapabilityUnknow</name>
      <anchorfile>classlibbgp_1_1BgpCapabilityUnknow.html</anchorfile>
      <anchor>ae3fec931f46f2aabbb11d78480f3d38a</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~BgpCapabilityUnknow</name>
      <anchorfile>classlibbgp_1_1BgpCapabilityUnknow.html</anchorfile>
      <anchor>a38df1b5a656920e544ce7a0419f1f485</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpCapabilityUnknow.html</anchorfile>
      <anchor>a0677204e158b15ef9a8dd3bf79f10132</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpCapabilityUnknow.html</anchorfile>
      <anchor>ab8effbb0dedf8079718544785c101d58</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpCapabilityUnknow.html</anchorfile>
      <anchor>ae22ea33ae03ca0c1765657887e7f2b4f</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>libbgp::BgpConfig</name>
    <filename>structlibbgp_1_1BgpConfig.html</filename>
    <member kind="variable">
      <type>BgpFilterRules</type>
      <name>in_filters</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>aa6bdb101f5f253b0236b067ab449ca60</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BgpFilterRules</type>
      <name>out_filters</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a893a38816397b093af04ed3ca39f9ff4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BgpOutHandler *</type>
      <name>out_handler</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a055a838bffab8e0cbdea22abf536c0ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BgpLogHandler *</type>
      <name>log_handler</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>ab3b993e8b2958966c1e2318a08b5655e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BgpRib *</type>
      <name>rib</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a6ef827d9bd4ab03278adf89e4bebd165</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>RouteEventBus *</type>
      <name>rev_bus</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a0f49c37a2db3ba92b358bed0b9ff1d86</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>no_collision_detection</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>ac42b213e8a941eeff8688b049bc05a31</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>use_4b_asn</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>ab225af5f692ee473e457515350297b68</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>asn</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a50058772fbf44f0bf8be1ae3779fa9cd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>peer_asn</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a0a4d1662bac518cd66bcce3ed35195c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>router_id</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>acc50e2d37d8b44e2c69d907281253f55</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>peering_lan_prefix</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a03654f4741f14505909ce0efe688191a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>peering_lan_length</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>aee3589e0edf72d85c106f1567a9bac4a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>no_nexthop_check</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a2e3e9617d3e7bdc4d90c7899eb456864</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>nexthop</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a815897482ba557776bef52b47b4ea988</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>forced_default_nexthop</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a7809bedbb1037aff0d1b162ca66c11f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>hold_timer</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a71d932a32d7d9b89c8327f578bad17d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Clock *</type>
      <name>clock</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a85433acb7a5ca8620fa4cf79f5d50798</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpFilterRule</name>
    <filename>classlibbgp_1_1BgpFilterRule.html</filename>
    <member kind="function">
      <type></type>
      <name>BgpFilterRule</name>
      <anchorfile>classlibbgp_1_1BgpFilterRule.html</anchorfile>
      <anchor>aef1bfa01ab131e6235b9e0f9f4ecb445</anchor>
      <arglist>(BgpFilterType type, BgpFilterOP op, uint32_t prefix, uint8_t mask)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>BgpFilterRule</name>
      <anchorfile>classlibbgp_1_1BgpFilterRule.html</anchorfile>
      <anchor>a0ed64d801f79830fb7616f721e9fba6e</anchor>
      <arglist>(BgpFilterType type, BgpFilterOP op, const char *prefix, uint8_t mask)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>BgpFilterRule</name>
      <anchorfile>classlibbgp_1_1BgpFilterRule.html</anchorfile>
      <anchor>a7f98c769b5382c322bc6f6be1497860f</anchor>
      <arglist>(BgpFilterType type, BgpFilterOP op, const Route &amp;prefix)</arglist>
    </member>
    <member kind="function">
      <type>BgpFilterOP</type>
      <name>apply</name>
      <anchorfile>classlibbgp_1_1BgpFilterRule.html</anchorfile>
      <anchor>a5d08edc8a58347abb543a5f905228b8a</anchor>
      <arglist>(uint32_t prefix, uint8_t mask) const</arglist>
    </member>
    <member kind="function">
      <type>BgpFilterOP</type>
      <name>apply</name>
      <anchorfile>classlibbgp_1_1BgpFilterRule.html</anchorfile>
      <anchor>aa7fd706d4e0e3f9cc535121c82dcb21c</anchor>
      <arglist>(const Route &amp;prefix) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpFilterRules</name>
    <filename>classlibbgp_1_1BgpFilterRules.html</filename>
    <member kind="function">
      <type></type>
      <name>BgpFilterRules</name>
      <anchorfile>classlibbgp_1_1BgpFilterRules.html</anchorfile>
      <anchor>a76b3cd13f762b0d936e0bd65fcf61b6d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>BgpFilterRules</name>
      <anchorfile>classlibbgp_1_1BgpFilterRules.html</anchorfile>
      <anchor>a0b2a504a9610db05ee7525ea1eb63f93</anchor>
      <arglist>(BgpFilterOP default_op)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>append</name>
      <anchorfile>classlibbgp_1_1BgpFilterRules.html</anchorfile>
      <anchor>a66f03e71e145a6d564450403365e3711</anchor>
      <arglist>(const BgpFilterRule &amp;rule)</arglist>
    </member>
    <member kind="function">
      <type>BgpFilterOP</type>
      <name>apply</name>
      <anchorfile>classlibbgp_1_1BgpFilterRules.html</anchorfile>
      <anchor>a3fe1b4b6a822f6db981d5cd880614bfb</anchor>
      <arglist>(uint32_t prefix, uint32_t mask) const</arglist>
    </member>
    <member kind="function">
      <type>BgpFilterOP</type>
      <name>apply</name>
      <anchorfile>classlibbgp_1_1BgpFilterRules.html</anchorfile>
      <anchor>a2c876e0f333a447406e386634f1aa687</anchor>
      <arglist>(const Route &amp;prefix) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpFsm</name>
    <filename>classlibbgp_1_1BgpFsm.html</filename>
    <base>libbgp::RouteEventReceiver</base>
    <member kind="function">
      <type>uint32_t</type>
      <name>getAsn</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>a56ab17f201b86e7aa52a3b7181bba7d6</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getBgpId</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>a3d27538cad11bd883872503b66df56b6</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getPeerAsn</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>a9c87ef87fdd8eed2e69d7afccafe4bf1</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getPeerBgpId</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>ac668e6a49328c84ea43ea569ff733bd0</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>uint16_t</type>
      <name>getHoldTimer</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>aad30d19a4619f8ec24332e3977f04731</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>BgpRib &amp;</type>
      <name>getRib</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>a7a168aef9826f039eac5349d8aae35f1</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>BgpState</type>
      <name>getState</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>a78206008297e4f947d7b9cf9cd6bb933</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>start</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>a297b5f43430153e579f9c4b75d214fca</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>stop</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>a2cfd8eca823780e49d2f3bd61cdb68c2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>run</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>adea892746fa368c182575d949e4565d3</anchor>
      <arglist>(const uint8_t *buffer, const size_t buffer_size)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>tick</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>a9a54320f6e82c41e7da4c355fbad24a9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>resetSoft</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>ae64c4f70343c68a4090ef4597b93ad5a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resetHard</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>a2ae746afb70c51edc6fb9bd552cac1b0</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpKeepaliveMessage</name>
    <filename>classlibbgp_1_1BgpKeepaliveMessage.html</filename>
    <base>libbgp::BgpMessage</base>
    <member kind="function">
      <type></type>
      <name>BgpKeepaliveMessage</name>
      <anchorfile>classlibbgp_1_1BgpKeepaliveMessage.html</anchorfile>
      <anchor>a7fe3931350ad5e455785e94386467a85</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpKeepaliveMessage.html</anchorfile>
      <anchor>a71ae7fd46514cc670d39d7c72b51aa7f</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpKeepaliveMessage.html</anchorfile>
      <anchor>a4d0fac613f48781558cce2c25649005e</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpKeepaliveMessage.html</anchorfile>
      <anchor>af881d9e67d77c40d5a0aec404ed93a24</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpLogHandler</name>
    <filename>classlibbgp_1_1BgpLogHandler.html</filename>
    <member kind="function">
      <type>void</type>
      <name>log</name>
      <anchorfile>classlibbgp_1_1BgpLogHandler.html</anchorfile>
      <anchor>a7fa1c9be3cfe2b3ad321edeee5024274</anchor>
      <arglist>(LogLevel level, const char *format_str,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>log</name>
      <anchorfile>classlibbgp_1_1BgpLogHandler.html</anchorfile>
      <anchor>a4515da16ad4ef5583468b28806f17177</anchor>
      <arglist>(LogLevel level, const Serializable &amp;serializable)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLogLevel</name>
      <anchorfile>classlibbgp_1_1BgpLogHandler.html</anchorfile>
      <anchor>a310e70ec41a9b5739aa2ba468d193f51</anchor>
      <arglist>(LogLevel level)</arglist>
    </member>
    <member kind="function">
      <type>LogLevel</type>
      <name>getLogLevel</name>
      <anchorfile>classlibbgp_1_1BgpLogHandler.html</anchorfile>
      <anchor>a402b3c6ed5bcf92f74761e33f0516c77</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~BgpLogHandler</name>
      <anchorfile>classlibbgp_1_1BgpLogHandler.html</anchorfile>
      <anchor>a8617972a902d60a4e29c8bb5ca5b1c1a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>logImpl</name>
      <anchorfile>classlibbgp_1_1BgpLogHandler.html</anchorfile>
      <anchor>a0fe75642c56e2d49e83eb3388bd71d1f</anchor>
      <arglist>(const char *str)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpMessage</name>
    <filename>classlibbgp_1_1BgpMessage.html</filename>
    <base>libbgp::Serializable</base>
    <member kind="function">
      <type></type>
      <name>BgpMessage</name>
      <anchorfile>classlibbgp_1_1BgpMessage.html</anchorfile>
      <anchor>a998df25f7fb244641aa81ca65666cf04</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpMessage.html</anchorfile>
      <anchor>a9ec440d37d05b7bc67189e3d93ed5036</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpMessage.html</anchorfile>
      <anchor>ac07738881c4667ec8ff466aae7efdb01</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const =0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpNotificationMessage</name>
    <filename>classlibbgp_1_1BgpNotificationMessage.html</filename>
    <base>libbgp::BgpMessage</base>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpNotificationMessage.html</anchorfile>
      <anchor>a5430ff2b72d42c22fecbc9201d86b5b5</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpNotificationMessage.html</anchorfile>
      <anchor>a2b805c42399529edc8c1d88f7cdc92a9</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpNotificationMessage.html</anchorfile>
      <anchor>a63ee6c6c573236611ebec459b93ee6f2</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>errcode</name>
      <anchorfile>classlibbgp_1_1BgpNotificationMessage.html</anchorfile>
      <anchor>a0eecaaaa3502a9a6ab9e16ea26e0d85a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>subcode</name>
      <anchorfile>classlibbgp_1_1BgpNotificationMessage.html</anchorfile>
      <anchor>a35f4967f5a12cb987c97d377106ec202</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t *</type>
      <name>data</name>
      <anchorfile>classlibbgp_1_1BgpNotificationMessage.html</anchorfile>
      <anchor>a7fc0067cb7815b4edfb24e643b6d6a0e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>data_len</name>
      <anchorfile>classlibbgp_1_1BgpNotificationMessage.html</anchorfile>
      <anchor>a1e8ffb8f3e587345a485567eb2aafe8b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpOpenMessage</name>
    <filename>classlibbgp_1_1BgpOpenMessage.html</filename>
    <base>libbgp::BgpMessage</base>
    <member kind="function">
      <type></type>
      <name>BgpOpenMessage</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>af2d3d61a7e2cb6535690b7e92f34402c</anchor>
      <arglist>(BgpLogHandler *logger, bool use_4b_asn)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>BgpOpenMessage</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>a93de0f720ff072ff44d7e2afd2ae2e05</anchor>
      <arglist>(BgpLogHandler *logger, bool use_4b_asn, uint16_t my_asn, uint16_t hold_time, uint32_t bgp_id)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>BgpOpenMessage</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>a09672640aa27518614414901c8593e41</anchor>
      <arglist>(BgpLogHandler *logger, bool use_4b_asn, uint16_t my_asn, uint16_t hold_time, const char *bgp_id)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setAsn</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>a5d71487ca0d8d3fcd680704d50f33ea6</anchor>
      <arglist>(uint32_t my_asn)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getAsn</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>a8a16ec4a21c13b2f60c36c523c3082c9</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasCapability</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>a0d46703d6aa20bb6a7c031458e74f364</anchor>
      <arglist>(uint8_t code) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>a2432c1b9e0047f4aae9e91f107e26dbd</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>a3d3e882d6d639f26615a04b83f67d57b</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>a7769ef9a1f4a656ec63ef08e59c780d7</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpOutHandler</name>
    <filename>classlibbgp_1_1BgpOutHandler.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>handleOut</name>
      <anchorfile>classlibbgp_1_1BgpOutHandler.html</anchorfile>
      <anchor>a89f6bc44f508693a0c1923e558a07ad8</anchor>
      <arglist>(const uint8_t *buffer, size_t length)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>notifyStateChange</name>
      <anchorfile>classlibbgp_1_1BgpOutHandler.html</anchorfile>
      <anchor>a908520e95c69605d5385fa670e5d772d</anchor>
      <arglist>(__attribute__((unused)) int old_state, __attribute__((unused)) int new_state)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPacket</name>
    <filename>classlibbgp_1_1BgpPacket.html</filename>
    <base>libbgp::Serializable</base>
    <member kind="function">
      <type></type>
      <name>BgpPacket</name>
      <anchorfile>classlibbgp_1_1BgpPacket.html</anchorfile>
      <anchor>ac65be4210f07792da4d0c5900a2ae147</anchor>
      <arglist>(BgpLogHandler *logger, bool is_4b, const BgpMessage *msg)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>BgpPacket</name>
      <anchorfile>classlibbgp_1_1BgpPacket.html</anchorfile>
      <anchor>a7c51654cfa89d954b33081632a510acb</anchor>
      <arglist>(BgpLogHandler *logger, bool is_4b)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPacket.html</anchorfile>
      <anchor>a0956a0fb7cb4cbadeeaf590e7eaf26c3</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPacket.html</anchorfile>
      <anchor>ad8e7de01adbb249ce57eee418c9d625b</anchor>
      <arglist>(const uint8_t *from, size_t buf_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPacket.html</anchorfile>
      <anchor>ab1816fff92cfc6f2b226fad46fbb9d52</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>const BgpMessage *</type>
      <name>getMessage</name>
      <anchorfile>classlibbgp_1_1BgpPacket.html</anchorfile>
      <anchor>aa4c910baf78776a6f4092f1b2fa38029</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttrib</name>
    <filename>classlibbgp_1_1BgpPathAttrib.html</filename>
    <base>libbgp::Serializable</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttrib</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>ad05435fbea1b1436b48ffca77d626442</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>BgpPathAttrib</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>ad8d6bb43ee5cd9712ee1283a5dc625bb</anchor>
      <arglist>(BgpLogHandler *logger, const uint8_t *value, uint16_t val_len)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a5e7991f4aaae52ee36c90e566441b4b5</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a89ba651f148d1ac46b00a658011b3267</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>ae5ab33a4395adc10109e97d3dcf962c2</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a9f726edd332787d4fb8dca86f3888cda</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a0a5623cfcc8cb8830ffbb43ad1cf436b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~BgpPathAttrib</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>aa4b3d56a51bc4352a2fcd82cc5fd6de9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int8_t</type>
      <name>GetTypeFromBuffer</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a6968805e605546d99c02dbbd59feb2e9</anchor>
      <arglist>(const uint8_t *buffer, size_t buffer_sz)</arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>optional</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>ab963f11e11379118b0ee6436f0dd0d9c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>transitive</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a19047d331d45f03e5914532271a868ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>partial</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a7a10a2ddd20169c07860bff8b624f700</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>extended</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>aa81430305612a6212dd8fd2df5c349ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>type_code</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>ac5b83faa3305a28d78d7dbdb83a472da</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>ssize_t</type>
      <name>parseHeader</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a4d59e1a1caa49bffcfc967ac5e8f970d</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>ssize_t</type>
      <name>printFlags</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a7b6ecfdbc146ff551ff08fb1b548e80c</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>ssize_t</type>
      <name>writeHeader</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a5b1d5291b91644610b39623ad27efad2</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>uint16_t</type>
      <name>value_len</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>ae83520b0f64374b6347920f0e3359e38</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribAggregator</name>
    <filename>classlibbgp_1_1BgpPathAttribAggregator.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttribAggregator</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAggregator.html</anchorfile>
      <anchor>a6e833dd3411280e155c6ba5e62e0050b</anchor>
      <arglist>(BgpLogHandler *logger, bool is_4b)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAggregator.html</anchorfile>
      <anchor>ae79243d45a2367eb758f66789053cc32</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAggregator.html</anchorfile>
      <anchor>ae9a8f576097f312a0ee590d6490e2fcb</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAggregator.html</anchorfile>
      <anchor>aa17f4f971b8694535f87495fccfbfa34</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAggregator.html</anchorfile>
      <anchor>a405d91884e73a96301c8c1fe3aa1f00a</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAggregator.html</anchorfile>
      <anchor>a92dd16f2787dd1a1091415397fade610</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>aggregator</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAggregator.html</anchorfile>
      <anchor>afde83c181c65050fcb1defd9739cd0d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>aggregator_asn</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAggregator.html</anchorfile>
      <anchor>a17d1f189d76be9d936d6ab909a79fdc7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>is_4b</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAggregator.html</anchorfile>
      <anchor>a25690fd0a66024e05063c79149512738</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribAs4Aggregator</name>
    <filename>classlibbgp_1_1BgpPathAttribAs4Aggregator.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttribAs4Aggregator</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Aggregator.html</anchorfile>
      <anchor>affd9c1bb848920f35af19aa7a083700c</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Aggregator.html</anchorfile>
      <anchor>abf153f32c980144703d0a16cc9dbeb56</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Aggregator.html</anchorfile>
      <anchor>a9cded8c6a23108b9fcfe7ac7505d2f4f</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Aggregator.html</anchorfile>
      <anchor>afba48c37ab9d84a8d982ced16e29ca57</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Aggregator.html</anchorfile>
      <anchor>a4ad29964196963b579d967bf98a1faf5</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Aggregator.html</anchorfile>
      <anchor>a36c0e557d76ea8a4f408f97dd465c421</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>aggregator</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Aggregator.html</anchorfile>
      <anchor>a9026dbb3cb2ba3ee93c134eb9b285bf9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>aggregator_asn4</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Aggregator.html</anchorfile>
      <anchor>a67e2d3f3332fe32e341741af5dcc047a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribAs4Path</name>
    <filename>classlibbgp_1_1BgpPathAttribAs4Path.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttribAs4Path</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Path.html</anchorfile>
      <anchor>abb701b3aa14d2d0964350fe87133d1bd</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>prepend</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Path.html</anchorfile>
      <anchor>a906c0b8ec9190cd841b44ae01f4872ba</anchor>
      <arglist>(uint32_t asn)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Path.html</anchorfile>
      <anchor>a45575f3b76be2457acb4f8ea12ed42ab</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Path.html</anchorfile>
      <anchor>a58df01e222597eaa50c138263b0cc3f1</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Path.html</anchorfile>
      <anchor>a6c86f00983a7947f1788bd0fc2e3f067</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Path.html</anchorfile>
      <anchor>a12096947394f8928fa42052d706de79c</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Path.html</anchorfile>
      <anchor>abef3357d5f1a48be645ef4a7b9f67a95</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; BgpAsPathSegment &gt;</type>
      <name>as4_paths</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAs4Path.html</anchorfile>
      <anchor>a7deaaef6e6e6c080044fb368ef37172b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribAsPath</name>
    <filename>classlibbgp_1_1BgpPathAttribAsPath.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttribAsPath</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAsPath.html</anchorfile>
      <anchor>a0382a6774920027d05d31f0a408954cf</anchor>
      <arglist>(BgpLogHandler *logger, bool is_4b)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAsPath.html</anchorfile>
      <anchor>a3a1701fed2e678ad4a48e84f2f4d7510</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>prepend</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAsPath.html</anchorfile>
      <anchor>a44a58a07230aa85a79aff0c532a37da8</anchor>
      <arglist>(uint32_t asn)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAsPath.html</anchorfile>
      <anchor>a64a49f844e20e44ce1f452832ebf0960</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAsPath.html</anchorfile>
      <anchor>a293171dbe7d5fdf298d9573553e850fb</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAsPath.html</anchorfile>
      <anchor>a549ac2aebac2c94ec2c6d64bb87ffe4d</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAsPath.html</anchorfile>
      <anchor>ad6c71f4cc9e072f4f40caf242d351542</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; BgpAsPathSegment &gt;</type>
      <name>as_paths</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAsPath.html</anchorfile>
      <anchor>a9ad756364bcf221fc86e1784c3258edb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>is_4b</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAsPath.html</anchorfile>
      <anchor>a9bda66d4283a4e3f537a4e91841dc145</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribAtomicAggregate</name>
    <filename>classlibbgp_1_1BgpPathAttribAtomicAggregate.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttribAtomicAggregate</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAtomicAggregate.html</anchorfile>
      <anchor>af42d7610bd023fab339224c3f2acceef</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAtomicAggregate.html</anchorfile>
      <anchor>ad394b884238724889bf8acdf9f0c8b6b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAtomicAggregate.html</anchorfile>
      <anchor>af4c5125528322b46227d115ebe3819dd</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAtomicAggregate.html</anchorfile>
      <anchor>af4581722e9fb9dbbaab0d24a591cea09</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAtomicAggregate.html</anchorfile>
      <anchor>a12560c18c2e4d50a151507544b050f36</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribAtomicAggregate.html</anchorfile>
      <anchor>a0cd1c66b7497d9aa6824ebac61f1a96d</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribCommunity</name>
    <filename>classlibbgp_1_1BgpPathAttribCommunity.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttribCommunity</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribCommunity.html</anchorfile>
      <anchor>a83ff9cf6b6223f55eb7241944fa98eb3</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribCommunity.html</anchorfile>
      <anchor>ac63d945977b2f807c309bad2bfb4283b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribCommunity.html</anchorfile>
      <anchor>af1871430d2dc62b4e9ed0be22bfec1aa</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribCommunity.html</anchorfile>
      <anchor>a31ec1ee1025d5236b68ad643d3f7937f</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribCommunity.html</anchorfile>
      <anchor>a9d7d6bd3a36df20b87f6a219c0946d6d</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribCommunity.html</anchorfile>
      <anchor>a25797738bb4108c4ca2276c407a49eb9</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>community</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribCommunity.html</anchorfile>
      <anchor>a191511942337973ff77d4f1fa5632d17</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribLocalPref</name>
    <filename>classlibbgp_1_1BgpPathAttribLocalPref.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttribLocalPref</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribLocalPref.html</anchorfile>
      <anchor>aa8dad7baba271c15ba36e8545b5a7cc2</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribLocalPref.html</anchorfile>
      <anchor>a4362691bf8a12eed2722256ee450cb7e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribLocalPref.html</anchorfile>
      <anchor>a8045b658375e66a8fbe59eeeb3358d75</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribLocalPref.html</anchorfile>
      <anchor>ad8f0e025fd75f6e65573ee1e20f8cc17</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribLocalPref.html</anchorfile>
      <anchor>ae8551714cccec979dd8169cad20e7e26</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribLocalPref.html</anchorfile>
      <anchor>a4880da83106a16d878b01f2f8496f16d</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>local_pref</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribLocalPref.html</anchorfile>
      <anchor>a895b6600698fc40a6f2c9b6abe4a8a82</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribMed</name>
    <filename>classlibbgp_1_1BgpPathAttribMed.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttribMed</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMed.html</anchorfile>
      <anchor>a741981e9e12632dfaeae1c2328ed9e8a</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMed.html</anchorfile>
      <anchor>a659d10d4c0eb33b712625b877f879992</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMed.html</anchorfile>
      <anchor>a1ec1e73054b63697da47482c0933f2ca</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMed.html</anchorfile>
      <anchor>aee0f36399e42d752f0d88402ac7943f7</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMed.html</anchorfile>
      <anchor>a16e48bac5eee3e1d2e3822a32ea7a02d</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMed.html</anchorfile>
      <anchor>aa8875665753ee40d5dc960b4fe366571</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>med</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMed.html</anchorfile>
      <anchor>a21dcc35ad031c91a3df1014e96971f41</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribNexthop</name>
    <filename>classlibbgp_1_1BgpPathAttribNexthop.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttribNexthop</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribNexthop.html</anchorfile>
      <anchor>a38885a5b3e3fe3eedf38d865bb32ce22</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribNexthop.html</anchorfile>
      <anchor>a95052abb935728eda3b003b3de710a81</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribNexthop.html</anchorfile>
      <anchor>af059fb85adfb51881b48872f6e0c8299</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribNexthop.html</anchorfile>
      <anchor>a62eab96d7163ff6c9ea8ed84a7f4dc89</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribNexthop.html</anchorfile>
      <anchor>a8b9da5103ec3a372bd059c5e2d188913</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribNexthop.html</anchorfile>
      <anchor>a704a9b8d5d3542c4cd7c4133bc218fd1</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>next_hop</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribNexthop.html</anchorfile>
      <anchor>ab5a1e028fdef74b5d9da57cebcc812b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribOrigin</name>
    <filename>classlibbgp_1_1BgpPathAttribOrigin.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="function">
      <type></type>
      <name>BgpPathAttribOrigin</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribOrigin.html</anchorfile>
      <anchor>a5478f764067558a975c04bb1290d44ce</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribOrigin.html</anchorfile>
      <anchor>a4e7f60d06fd64f84071773c68d663e2b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribOrigin.html</anchorfile>
      <anchor>ac0575e226c3883f935775adb89437b1f</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribOrigin.html</anchorfile>
      <anchor>aca953e0f30eadeb69c5529401c8fc750</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribOrigin.html</anchorfile>
      <anchor>a73aaf749dd5f2c8cb4840635bea3a1aa</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribOrigin.html</anchorfile>
      <anchor>a0707b1b0ca04ef35b585192b792e798f</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpRib</name>
    <filename>classlibbgp_1_1BgpRib.html</filename>
    <member kind="function">
      <type></type>
      <name>BgpRib</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a7999871f2dd7eb8ea2c7fceb0e619238</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>const BgpRibEntry *</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a051c31d60149506a07495cbe9a10a6a8</anchor>
      <arglist>(BgpLogHandler *logger, const Route &amp;route, uint32_t nexthop)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>af2d1adc62bceed8ff93d3465d0ce2cc2</anchor>
      <arglist>(uint32_t src_router_id, const Route &amp;route, const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attrib)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a23be773eb45fd56b3463ffb1efc55058</anchor>
      <arglist>(uint32_t src_router_id, const std::vector&lt; Route &gt; &amp;routes, const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attrib)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>withdraw</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a70783157aeccf693ea1bf7300b6a0280</anchor>
      <arglist>(uint32_t src_router_id, const Route &amp;route)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>withdraw</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a0ebb5ea35902abd8de63dba9126e2b31</anchor>
      <arglist>(uint32_t src_router_id, const std::vector&lt; Route &gt; &amp;routes)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; Route &gt;</type>
      <name>discard</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a0becda05fc430c8c63c6c54256e1535c</anchor>
      <arglist>(uint32_t src_router_id)</arglist>
    </member>
    <member kind="function">
      <type>const BgpRibEntry *</type>
      <name>lookup</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a54a07e487293cb819813636b324bf3b4</anchor>
      <arglist>(uint32_t dest) const</arglist>
    </member>
    <member kind="function">
      <type>const BgpRibEntry *</type>
      <name>lookup</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a12e9f219a8a9aa8ab8f4c88f709181e7</anchor>
      <arglist>(uint32_t src_router_id, uint32_t dest) const</arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; BgpRibEntry &gt; &amp;</type>
      <name>get</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>ae7c3aa25cca4b67acd7f36b2d6925064</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpRibEntry</name>
    <filename>classlibbgp_1_1BgpRibEntry.html</filename>
    <member kind="function">
      <type></type>
      <name>BgpRibEntry</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a64f7a285ed2055af8d69cbf21ab99a73</anchor>
      <arglist>(Route r, uint32_t src, const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; attribs)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getMetric</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>adf29a93022773fb5b920ecb4a335c58c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getNexthop</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a2f8b87b84edbddea08afa4452e4d7f6f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>Route</type>
      <name>route</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>adf15885aace5c747eabceb95cb5b458a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>src_router_id</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a371b0f13709f9ef05b0184b8d0dfb9d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint64_t</type>
      <name>update_id</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a53181be39e7e627df825be8ac5958bbf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt; &gt;</type>
      <name>attribs</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a4a16bb9f1f335019907ad924b3296087</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpSink</name>
    <filename>classlibbgp_1_1BgpSink.html</filename>
    <member kind="function">
      <type></type>
      <name>BgpSink</name>
      <anchorfile>classlibbgp_1_1BgpSink.html</anchorfile>
      <anchor>a377746517e6a7457d0a8ff392a056b3e</anchor>
      <arglist>(bool use_4b_asn, size_t buffer_size)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>fill</name>
      <anchorfile>classlibbgp_1_1BgpSink.html</anchorfile>
      <anchor>a6b79f9ca992b6bd6dc0aa4136b81d76b</anchor>
      <arglist>(const uint8_t *buffer, size_t len)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>pour</name>
      <anchorfile>classlibbgp_1_1BgpSink.html</anchorfile>
      <anchor>ac500b764b03dcb1723355c59ea53e813</anchor>
      <arglist>(BgpPacket **pkt)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>getBytesInSink</name>
      <anchorfile>classlibbgp_1_1BgpSink.html</anchorfile>
      <anchor>a3da1538490f8196c7cc04b223abac964</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>drain</name>
      <anchorfile>classlibbgp_1_1BgpSink.html</anchorfile>
      <anchor>ac4b7dff164b0aa70149dbc733f395d55</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLogger</name>
      <anchorfile>classlibbgp_1_1BgpSink.html</anchorfile>
      <anchor>a7fc87478ddddfa318d0ac61ae5711bc3</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~BgpSink</name>
      <anchorfile>classlibbgp_1_1BgpSink.html</anchorfile>
      <anchor>a59ee833c126f150cf234780d2fa06817</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpUpdateMessage</name>
    <filename>classlibbgp_1_1BgpUpdateMessage.html</filename>
    <base>libbgp::BgpMessage</base>
    <member kind="function">
      <type></type>
      <name>BgpUpdateMessage</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>aae2bfd80258e8872dc6b2a6b30e9e051</anchor>
      <arglist>(BgpLogHandler *logger, bool use_4b_asn)</arglist>
    </member>
    <member kind="function">
      <type>BgpPathAttrib &amp;</type>
      <name>getAttrib</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>ad6418602d92ebdf51d0748efc944c772</anchor>
      <arglist>(uint8_t type)</arglist>
    </member>
    <member kind="function">
      <type>const BgpPathAttrib &amp;</type>
      <name>getAttrib</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a54e34ce4a57b48ee470e5094e8589c25</anchor>
      <arglist>(uint8_t type) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasAttrib</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a3a9eebac8bd810bcd0b4b9b57ecbd7cd</anchor>
      <arglist>(uint8_t type) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>addAttrib</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a36a81a80086bc37a17b5753305f5c19a</anchor>
      <arglist>(const BgpPathAttrib &amp;attrib)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setAttribs</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>ad94abc6df4aa5b8e65ef76436d802611</anchor>
      <arglist>(const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attrs)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dropAttrib</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a9760312fb0fe850f409034a0d7e0e9ff</anchor>
      <arglist>(uint8_t type)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>updateAttribute</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a24f1d5b3c5d928dc0c87db14af301fff</anchor>
      <arglist>(const BgpPathAttrib &amp;attrib)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>dropNonTransitive</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a0b5a27219a54628fae3518eefaac26b0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setNextHop</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a771049abe5382cec6c16d05dc8219f8f</anchor>
      <arglist>(uint32_t nexthop)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>prepend</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>aa4181914f2852f4c3c79c9dd271ac11c</anchor>
      <arglist>(uint32_t asn)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>restoreAsPath</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a145d8b9ce83ceded471016956ca789a8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>downgradeAsPath</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>ac1dc478e5e8bc093266d1823fd742f81</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>restoreAggregator</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>aed6bdd6a3ae5b52e1e6b1225c1f81187</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>downgradeAggregator</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a8ce2898eb94c51350ab935e84c2d6078</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setWithdrawn</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a354fdcbe07ac8ff2914a6d3a44d2b5ee</anchor>
      <arglist>(const std::vector&lt; Route &gt; &amp;routes)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>addWithdrawn</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a0209423df4f2f04484561addeddf49e7</anchor>
      <arglist>(uint32_t prefix, uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>addWithdrawn</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>aaf8cae16172cad7440f9a3c815ebf54c</anchor>
      <arglist>(const Route &amp;route)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setNlri</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a94e7cf3186a733109fec5c95a2e105a0</anchor>
      <arglist>(const std::vector&lt; Route &gt; &amp;routes)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>addNlri</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a0a114edba4964ea26bd2286b44c99070</anchor>
      <arglist>(uint32_t prefix, uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>addNlri</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a26deec4c54b2b600b1e414645ea319dd</anchor>
      <arglist>(const Route &amp;route)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a09449af1543f3ddba5bd175d9ecf05ba</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a2b8c96ad05bef4c5f4223b0d32a1c6c8</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a6068ea1cc6c84ee545e821da83d9f0e0</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::Clock</name>
    <filename>classlibbgp_1_1Clock.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual uint64_t</type>
      <name>getTime</name>
      <anchorfile>classlibbgp_1_1Clock.html</anchorfile>
      <anchor>a23b365e051acce7db6be69f045ca91ff</anchor>
      <arglist>() const =0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::FdOutHandler</name>
    <filename>classlibbgp_1_1FdOutHandler.html</filename>
    <base>libbgp::BgpOutHandler</base>
    <member kind="function">
      <type></type>
      <name>FdOutHandler</name>
      <anchorfile>classlibbgp_1_1FdOutHandler.html</anchorfile>
      <anchor>a18ae2cdb9fb405d07375f516ad4264db</anchor>
      <arglist>(int fd)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>handleOut</name>
      <anchorfile>classlibbgp_1_1FdOutHandler.html</anchorfile>
      <anchor>a688e3be3b47004efb4116e5ca9380776</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::RealtimeClock</name>
    <filename>classlibbgp_1_1RealtimeClock.html</filename>
    <base>libbgp::Clock</base>
    <member kind="function">
      <type>uint64_t</type>
      <name>getTime</name>
      <anchorfile>classlibbgp_1_1RealtimeClock.html</anchorfile>
      <anchor>a387549035229e959b10678222f61af9e</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::Route</name>
    <filename>classlibbgp_1_1Route.html</filename>
    <member kind="function">
      <type></type>
      <name>Route</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>a1217ccf5b6ecb36ebfc85b16962c4296</anchor>
      <arglist>(uint32_t prefix, uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Route</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>a0e860c1cc2a4c2ebaddaee58f56755c5</anchor>
      <arglist>(const char *prefix, uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>a7d2e21fa95731f2c8e35ffdbb5678d41</anchor>
      <arglist>(uint32_t address) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>afb8211eead6b73450fb1c0b458b6ee34</anchor>
      <arglist>(const char *address) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>a3ec09421c6b9b704c610de81e4432707</anchor>
      <arglist>(const Route &amp;other) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>a4a81a9a5a67117de01a07991ee62d6e6</anchor>
      <arglist>(uint32_t prefix, uint8_t length) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>afdfa66d57d1c323f9497994556e5cdf1</anchor>
      <arglist>(const char *prefix, uint8_t length) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>af40cad70c2744a334d474bad4d23fc65</anchor>
      <arglist>(const Route &amp;other) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setPrefix</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>a0a58f03241cbf074b66deee4add06813</anchor>
      <arglist>(uint32_t prefix)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setLength</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>a4bf42048e6b6bc2ecc5d9ed965acddac</anchor>
      <arglist>(uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getPrefix</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>a55d050e216521dc5459273efe672b9ff</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>uint8_t</type>
      <name>getLength</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>ad8cada2027326f6fc06ddb6a08914462</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getMask</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>a69dcb2c2cf93cbfdd0eede6ac33311b0</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>Includes</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>a0b8f3b7e3dd9b49cbf108a60aa4b069a</anchor>
      <arglist>(uint32_t prefix, uint8_t length, uint32_t address)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>Includes</name>
      <anchorfile>classlibbgp_1_1Route.html</anchorfile>
      <anchor>acc1540cc5645ea8d67397ffd391abc58</anchor>
      <arglist>(uint32_t prefix_a, uint8_t length_a, uint32_t prefix_b, uint8_t length_b)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::RouteAddEvent</name>
    <filename>classlibbgp_1_1RouteAddEvent.html</filename>
    <base>libbgp::RouteEvent</base>
    <member kind="variable">
      <type>std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt; &gt;</type>
      <name>attribs</name>
      <anchorfile>classlibbgp_1_1RouteAddEvent.html</anchorfile>
      <anchor>aaff7b8bf5c298d5c538dbfdc235bbbba</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; Route &gt;</type>
      <name>routes</name>
      <anchorfile>classlibbgp_1_1RouteAddEvent.html</anchorfile>
      <anchor>a0d94b0e261921f2a8b494babc4e76193</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::RouteCollisionEvent</name>
    <filename>classlibbgp_1_1RouteCollisionEvent.html</filename>
    <base>libbgp::RouteEvent</base>
  </compound>
  <compound kind="class">
    <name>libbgp::RouteEvent</name>
    <filename>classlibbgp_1_1RouteEvent.html</filename>
    <member kind="variable">
      <type>RouteEventType</type>
      <name>type</name>
      <anchorfile>classlibbgp_1_1RouteEvent.html</anchorfile>
      <anchor>a7ebada61b6b2b9b8e6128099abbc671d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::RouteEventBus</name>
    <filename>classlibbgp_1_1RouteEventBus.html</filename>
    <member kind="function">
      <type>int</type>
      <name>publish</name>
      <anchorfile>classlibbgp_1_1RouteEventBus.html</anchorfile>
      <anchor>aca68243e992480debcef8011cf0a0886</anchor>
      <arglist>(RouteEventReceiver *recv, const RouteEvent &amp;ev)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>subscribe</name>
      <anchorfile>classlibbgp_1_1RouteEventBus.html</anchorfile>
      <anchor>a8479fcd6ead5e448841eb46610ab00d2</anchor>
      <arglist>(RouteEventReceiver *recv)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>unsubscribe</name>
      <anchorfile>classlibbgp_1_1RouteEventBus.html</anchorfile>
      <anchor>a55ddb50c9ae7fc4883a5cb9654ceb1c5</anchor>
      <arglist>(RouteEventReceiver *recv)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::RouteEventReceiver</name>
    <filename>classlibbgp_1_1RouteEventReceiver.html</filename>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual bool</type>
      <name>handleRouteEvent</name>
      <anchorfile>classlibbgp_1_1RouteEventReceiver.html</anchorfile>
      <anchor>acb49d33f47dcc9a15d89b50aad6cf652</anchor>
      <arglist>(const RouteEvent &amp;ev)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::RouteWithdrawEvent</name>
    <filename>classlibbgp_1_1RouteWithdrawEvent.html</filename>
    <base>libbgp::RouteEvent</base>
    <member kind="variable">
      <type>std::vector&lt; Route &gt;</type>
      <name>routes</name>
      <anchorfile>classlibbgp_1_1RouteWithdrawEvent.html</anchorfile>
      <anchor>ae9245ff18d4030bf2cdd6ac5987fd019</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::Serializable</name>
    <filename>classlibbgp_1_1Serializable.html</filename>
    <member kind="function">
      <type></type>
      <name>Serializable</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>adff26a0a2481c35d40bc4c905a2d9550</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Serializable</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>a749db1ceb56b9ebe213e00b0e58ec9ad</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>print</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>a804fb732b7089ac0a98a6e926f1551d6</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>print</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>a490c037d263896afc7776e339741eb33</anchor>
      <arglist>(size_t indent, uint8_t *to, size_t buf_sz) const</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>a5562d3b3cda5cfda2f3749862f810e24</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>a9aa89277c8b12ee3821285c479ebf545</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const =0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>a37f02045e83866077732aa421dbad0e4</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasError</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>a71cbd82595e9145b0f7bd0664d190e87</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>a10899ba2551d80fb5e18263d542cf730</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const =0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setError</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>a7fe3ec9c2494bb2bf6799d287ebe9dd2</anchor>
      <arglist>(uint8_t err, uint8_t suberr, const uint8_t *data, size_t data_len)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>forwardParseError</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>aad7471024f07b225d9c61dd338de28a5</anchor>
      <arglist>(const Serializable &amp;other)</arglist>
    </member>
    <member kind="function" protection="protected" static="yes">
      <type>static ssize_t</type>
      <name>_print</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>a439ea41e411d9695a0c49ac5563350d1</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_left, const char *format,...)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>libbgp</title>
    <filename>index</filename>
  </compound>
</tagfile>
