<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>bgp-afi.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-afi_8h</filename>
    <member kind="enumeration">
      <type></type>
      <name>Afi</name>
      <anchorfile>bgp-afi_8h.html</anchorfile>
      <anchor>a47068b6c3ed14ce7aebc0d5446cbda3c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Safi</name>
      <anchorfile>bgp-afi_8h.html</anchorfile>
      <anchor>a30316ddc542d142d5ce90928fba1666c</anchor>
      <arglist></arglist>
    </member>
  </compound>
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
    <includes id="bgp-afi_8h" name="bgp-afi.h" local="yes" imported="no">bgp-afi.h</includes>
    <includes id="serializable_8h" name="serializable.h" local="yes" imported="no">serializable.h</includes>
    <class kind="class">libbgp::BgpCapability</class>
    <class kind="class">libbgp::BgpCapability4BytesAsn</class>
    <class kind="class">libbgp::BgpCapabilityMpBgp</class>
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
    <includes id="bgp-rib4_8h" name="bgp-rib4.h" local="yes" imported="no">bgp-rib4.h</includes>
    <includes id="bgp-rib6_8h" name="bgp-rib6.h" local="yes" imported="no">bgp-rib6.h</includes>
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
      <anchor>a5217dcfc07b6ff3e600fa7bdd6803e21</anchor>
      <arglist>[7]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_header_error_subcode_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>a243c626a873a36c824973dc4c3fda9c8</anchor>
      <arglist>[4]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_open_error_subcode_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>a637b9ac678866dac6f430eb232c957ae</anchor>
      <arglist>[8]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_update_error_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>a3ca4aaaccff578acf61cb6c598beafe3</anchor>
      <arglist>[12]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_fsm_error_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>a41fddc5d32f5736daa23d270466e4265</anchor>
      <arglist>[4]</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>bgp_cease_error_str</name>
      <anchorfile>bgp-errcode_8cc.html</anchorfile>
      <anchor>a7bf0f9cc7a3083663b83079d6dc43f02</anchor>
      <arglist>[9]</arglist>
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
    <name>bgp-filter.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-filter_8cc</filename>
    <includes id="bgp-filter_8h" name="bgp-filter.h" local="yes" imported="no">bgp-filter.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-filter.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-filter_8h</filename>
    <includes id="bgp-afi_8h" name="bgp-afi.h" local="yes" imported="no">bgp-afi.h</includes>
    <includes id="prefix4_8h" name="prefix4.h" local="yes" imported="no">prefix4.h</includes>
    <includes id="prefix6_8h" name="prefix6.h" local="yes" imported="no">prefix6.h</includes>
    <includes id="bgp-path-attrib_8h" name="bgp-path-attrib.h" local="yes" imported="no">bgp-path-attrib.h</includes>
    <class kind="class">libbgp::BgpFilterRule</class>
    <class kind="class">libbgp::BgpFilterRuleRoute</class>
    <class kind="class">libbgp::BgpFilterRuleRoute4</class>
    <class kind="class">libbgp::BgpFilterRuleRoute6</class>
    <class kind="class">libbgp::BgpFilterRuleAsPath</class>
    <class kind="class">libbgp::BgpFilterRuleCommunity</class>
    <class kind="class">libbgp::BgpFilterRules</class>
    <member kind="enumeration">
      <type></type>
      <name>BgpFilterRuleType</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a5d17d0067f21c604db6664cc491547a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>F_ROUTE</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a5d17d0067f21c604db6664cc491547a8a9163dc67241bd112d2b10ab77eeed52d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>F_AS_PATH</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a5d17d0067f21c604db6664cc491547a8a9f42107fd36a70f8f875a76780053d2b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>F_COMMUNITY</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a5d17d0067f21c604db6664cc491547a8aa0a62a0dab0ab987ecacbd5c729801be</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpFilterRuleRouteMatchType</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a8e60861335e07d6ae40515b00d45cea4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_EQ</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a8e60861335e07d6ae40515b00d45cea4a9ea483b720a308c9a96681a1260e33d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_NE</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a8e60861335e07d6ae40515b00d45cea4ad0a48c415f1e43033193ada7f402359a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_GT</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a8e60861335e07d6ae40515b00d45cea4a38ba7dd6f68bc2bb4e7e8c040562205b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_LT</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a8e60861335e07d6ae40515b00d45cea4a9206a6e80f607892f6d5611709719b0c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_GE</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a8e60861335e07d6ae40515b00d45cea4a94ab5d8ff3e0eaa53917cf15acb70c02</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_LE</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a8e60861335e07d6ae40515b00d45cea4a9350c19e83e76d427e2ff5c1149ba638</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpFilterRuleAsPathMatchType</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a22494fc9dc037cd8c6b7b40377ded35f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_HAS_ASN</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a22494fc9dc037cd8c6b7b40377ded35fa91d04966032d4ff43db604a9b4b6eef7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_NOT_HAS_ASN</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a22494fc9dc037cd8c6b7b40377ded35fad45494682f19fceef914dc40913e6c43</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_FROM_ASN</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a22494fc9dc037cd8c6b7b40377ded35fa58706a88aad2b5b89f9e1dac9a7ac41f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_NOT_FROM_ASN</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a22494fc9dc037cd8c6b7b40377ded35fabb2f4ed0267cedd5f1cad20ab323bf81</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BgpFilterRuleCommunityMatchType</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a6af1e0ba40fe9a19560545629e8de84b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_HAS_COMMUNITY</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a6af1e0ba40fe9a19560545629e8de84ba45a1eff2e234dea053541eb0308d8686</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>M_NOT_HAS_COMMUNITY</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a6af1e0ba40fe9a19560545629e8de84ba5c09a7b52360b1ef9c9d9020b2fe215f</anchor>
      <arglist></arglist>
    </member>
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
      <name>BgpWellKnownCommunity</name>
      <anchorfile>bgp-filter_8h.html</anchorfile>
      <anchor>a2c0c0673bbc481e41473298eb8cb6ab8</anchor>
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
    <includes id="bgp-rib4_8h" name="bgp-rib4.h" local="yes" imported="no">bgp-rib4.h</includes>
    <includes id="bgp-rib6_8h" name="bgp-rib6.h" local="yes" imported="no">bgp-rib6.h</includes>
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
    <includes id="bgp-afi_8h" name="bgp-afi.h" local="yes" imported="no">bgp-afi.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-path-attrib.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-path-attrib_8h</filename>
    <includes id="serializable_8h" name="serializable.h" local="yes" imported="no">serializable.h</includes>
    <includes id="prefix6_8h" name="prefix6.h" local="yes" imported="no">prefix6.h</includes>
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
    <class kind="class">libbgp::BgpPathAttribMpNlriBase</class>
    <class kind="class">libbgp::BgpPathAttribMpReachNlriIpv6</class>
    <class kind="class">libbgp::BgpPathAttribMpReachNlriUnknow</class>
    <class kind="class">libbgp::BgpPathAttribMpUnreachNlriIpv6</class>
    <class kind="class">libbgp::BgpPathAttribMpUnreachNlriUnknow</class>
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
    <name>bgp-rib4.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-rib4_8cc</filename>
    <includes id="bgp-rib4_8h" name="bgp-rib4.h" local="yes" imported="no">bgp-rib4.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-rib4.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-rib4_8h</filename>
    <includes id="prefix4_8h" name="prefix4.h" local="yes" imported="no">prefix4.h</includes>
    <includes id="bgp-path-attrib_8h" name="bgp-path-attrib.h" local="yes" imported="no">bgp-path-attrib.h</includes>
    <includes id="route-event-bus_8h" name="route-event-bus.h" local="yes" imported="no">route-event-bus.h</includes>
    <class kind="class">libbgp::BgpRib4Entry</class>
    <class kind="class">libbgp::BgpRib4</class>
  </compound>
  <compound kind="file">
    <name>bgp-rib6.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-rib6_8cc</filename>
    <includes id="bgp-rib6_8h" name="bgp-rib6.h" local="yes" imported="no">bgp-rib6.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-rib6.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-rib6_8h</filename>
    <includes id="prefix6_8h" name="prefix6.h" local="yes" imported="no">prefix6.h</includes>
    <includes id="bgp-path-attrib_8h" name="bgp-path-attrib.h" local="yes" imported="no">bgp-path-attrib.h</includes>
    <includes id="route-event-bus_8h" name="route-event-bus.h" local="yes" imported="no">route-event-bus.h</includes>
    <class kind="class">libbgp::BgpRib6Entry</class>
    <class kind="class">libbgp::BgpRib6</class>
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
    <includes id="bgp-afi_8h" name="bgp-afi.h" local="yes" imported="no">bgp-afi.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
  </compound>
  <compound kind="file">
    <name>bgp-update-message.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>bgp-update-message_8h</filename>
    <includes id="prefix4_8h" name="prefix4.h" local="yes" imported="no">prefix4.h</includes>
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
    <name>prefix.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>prefix_8h</filename>
    <includes id="bgp-afi_8h" name="bgp-afi.h" local="yes" imported="no">bgp-afi.h</includes>
    <class kind="class">libbgp::Prefix</class>
    <member kind="function">
      <type>uint32_t</type>
      <name>cidr_to_mask</name>
      <anchorfile>prefix_8h.html</anchorfile>
      <anchor>a3adae39480242b265fc4241dbe879114</anchor>
      <arglist>(uint8_t cidr)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>prefix4.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>prefix4_8cc</filename>
    <includes id="prefix4_8h" name="prefix4.h" local="yes" imported="no">prefix4.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
    <member kind="function">
      <type>uint32_t</type>
      <name>cidr_to_mask</name>
      <anchorfile>prefix_8h.html</anchorfile>
      <anchor>a3adae39480242b265fc4241dbe879114</anchor>
      <arglist>(uint8_t cidr)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>prefix4.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>prefix4_8h</filename>
    <includes id="prefix_8h" name="prefix.h" local="yes" imported="no">prefix.h</includes>
    <class kind="class">libbgp::Prefix4</class>
    <member kind="function">
      <type>uint32_t</type>
      <name>cidr_to_mask</name>
      <anchorfile>prefix_8h.html</anchorfile>
      <anchor>a3adae39480242b265fc4241dbe879114</anchor>
      <arglist>(uint8_t cidr)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>prefix6.cc</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>prefix6_8cc</filename>
    <includes id="prefix6_8h" name="prefix6.h" local="yes" imported="no">prefix6.h</includes>
    <includes id="value-op_8h" name="value-op.h" local="yes" imported="no">value-op.h</includes>
    <member kind="function">
      <type>bool</type>
      <name>cidr_to_mask6</name>
      <anchorfile>prefix6_8cc.html</anchorfile>
      <anchor>aa6f7fccd3ed65e72c6a1dcd6ee099d15</anchor>
      <arglist>(uint8_t src, uint8_t dst[16])</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>mask_ipv6</name>
      <anchorfile>prefix6_8cc.html</anchorfile>
      <anchor>a8e1ac0b88e2109c74eaa940efb8c67ad</anchor>
      <arglist>(const uint8_t prefix[16], uint8_t mask, uint8_t masked_addr[16])</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>v6addr_is_zero</name>
      <anchorfile>prefix6_8cc.html</anchorfile>
      <anchor>a8871328796a8421997938dc6ad3c0ba4</anchor>
      <arglist>(const uint8_t prefix[16])</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>prefix6.h</name>
    <path>/Users/nat/projects/libbgp/src/</path>
    <filename>prefix6_8h</filename>
    <includes id="prefix_8h" name="prefix.h" local="yes" imported="no">prefix.h</includes>
    <class kind="class">libbgp::Prefix6</class>
    <member kind="function">
      <type>bool</type>
      <name>cidr_to_mask6</name>
      <anchorfile>prefix6_8cc.html</anchorfile>
      <anchor>aa6f7fccd3ed65e72c6a1dcd6ee099d15</anchor>
      <arglist>(uint8_t src, uint8_t dst[16])</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>mask_ipv6</name>
      <anchorfile>prefix6_8cc.html</anchorfile>
      <anchor>a8e1ac0b88e2109c74eaa940efb8c67ad</anchor>
      <arglist>(const uint8_t prefix[16], uint8_t mask, uint8_t masked_addr[16])</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>v6addr_is_zero</name>
      <anchorfile>prefix6_8cc.html</anchorfile>
      <anchor>a8871328796a8421997938dc6ad3c0ba4</anchor>
      <arglist>(const uint8_t prefix[16])</arglist>
    </member>
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
    <class kind="class">libbgp::Route4AddEvent</class>
    <class kind="class">libbgp::Route4WithdrawEvent</class>
    <class kind="class">libbgp::Route6AddEvent</class>
    <class kind="class">libbgp::Route6WithdrawEvent</class>
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
    <name>libbgp::BgpCapabilityMpBgp</name>
    <filename>classlibbgp_1_1BgpCapabilityMpBgp.html</filename>
    <base>libbgp::BgpCapability</base>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpCapabilityMpBgp.html</anchorfile>
      <anchor>a6647442cf6ea81aa654950925e6a1cdb</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpCapabilityMpBgp.html</anchorfile>
      <anchor>aabcf1be4b8c98fd43b298dd6c7e702e9</anchor>
      <arglist>(const uint8_t *from, size_t msg_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpCapabilityMpBgp.html</anchorfile>
      <anchor>ad3922b9a618c649a8161d03ccd62a30d</anchor>
      <arglist>(uint8_t *to, size_t buf_sz) const</arglist>
    </member>
    <member kind="variable">
      <type>uint16_t</type>
      <name>afi</name>
      <anchorfile>classlibbgp_1_1BgpCapabilityMpBgp.html</anchorfile>
      <anchor>a5073dedf31ecd25f0d50449f83fe8791</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>safi</name>
      <anchorfile>classlibbgp_1_1BgpCapabilityMpBgp.html</anchorfile>
      <anchor>a63e85022a98bd9890c7c8a19843a880b</anchor>
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
      <name>in_filters4</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a168f05dbe1ea4c3f618b6f0bc98e103e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BgpFilterRules</type>
      <name>out_filters4</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>aa665a75d3095d3e28897c4bdda689ef6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BgpFilterRules</type>
      <name>in_filters6</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a05b0546721998530aa0341d28ad267db</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BgpFilterRules</type>
      <name>out_filters6</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>ae079fdb88338adfa1b24341e6daa4a00</anchor>
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
      <type>BgpRib4 *</type>
      <name>rib4</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a4c9be0a50513a73a908efefdbcb1be92</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>BgpRib6 *</type>
      <name>rib6</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a6c9635d24974028d0a7e2c6b37d42527</anchor>
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
      <type>bool</type>
      <name>mp_bgp_ipv4</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a6726cccab854ccc0c2efd4abb8d1f37a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>mp_bgp_ipv6</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a6d9218e15a9ad321c22042405777d756</anchor>
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
      <type>Prefix4</type>
      <name>peering_lan4</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>aa40956bb41579f1db353d41db1383f4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Prefix6</type>
      <name>peering_lan6</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>aed8375964f1736d02bdff2f2a5944185</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>no_nexthop_check4</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a565e7bbdef0c8a7221008379b51f1e49</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>default_nexthop4</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a435eab7547c46ec544b56fc8b381785f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>forced_default_nexthop4</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a64b058158a17c5db5c293fc5c73d3ef7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>no_nexthop_check6</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>af32036c2a34be75beb4e8105b7d06883</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>default_nexthop6_global</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a2ce1fca76330faac4d42007cc5f35c39</anchor>
      <arglist>[16]</arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>default_nexthop6_linklocal</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>afa13bb920d5ab79b1a308fc451756b48</anchor>
      <arglist>[16]</arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>forced_default_nexthop6</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a3c454b67d590ace193461f35badffdff</anchor>
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
    <member kind="variable">
      <type>int8_t</type>
      <name>allow_local_as</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a4e3d9af2a232e3580c83829477c5e219</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int32_t</type>
      <name>weight</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a4523be3046506516bcf379cd1ebe4762</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>no_autotick</name>
      <anchorfile>structlibbgp_1_1BgpConfig.html</anchorfile>
      <anchor>a27baf1be24c26934a1ecd164869709bf</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpFilterRule</name>
    <filename>classlibbgp_1_1BgpFilterRule.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual BgpFilterOP</type>
      <name>apply</name>
      <anchorfile>classlibbgp_1_1BgpFilterRule.html</anchorfile>
      <anchor>a396ad19d8f912a91b78253ac93644554</anchor>
      <arglist>(const Prefix &amp;prefix, const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attribs)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpFilterRuleAsPath</name>
    <filename>classlibbgp_1_1BgpFilterRuleAsPath.html</filename>
    <base>libbgp::BgpFilterRule</base>
    <member kind="function">
      <type></type>
      <name>BgpFilterRuleAsPath</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleAsPath.html</anchorfile>
      <anchor>aa3d51e83fa2faa2e4b0e32ed38557bab</anchor>
      <arglist>(BgpFilterOP op, BgpFilterRuleAsPathMatchType type, uint32_t asn)</arglist>
    </member>
    <member kind="function">
      <type>BgpFilterOP</type>
      <name>apply</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleAsPath.html</anchorfile>
      <anchor>a6df571b7a2cf78e7ef1c6a1edd713f37</anchor>
      <arglist>(const Prefix &amp;prefix, const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attribs)</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>asn</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleAsPath.html</anchorfile>
      <anchor>a81fc169b2f77294c28e9c58de32ce24a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpFilterRuleCommunity</name>
    <filename>classlibbgp_1_1BgpFilterRuleCommunity.html</filename>
    <base>libbgp::BgpFilterRule</base>
    <member kind="function">
      <type></type>
      <name>BgpFilterRuleCommunity</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleCommunity.html</anchorfile>
      <anchor>ada70e5e64473e5093b5aa5f7db4462a4</anchor>
      <arglist>(BgpFilterOP op, BgpFilterRuleCommunityMatchType type, uint16_t asn, uint16_t keyword)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>BgpFilterRuleCommunity</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleCommunity.html</anchorfile>
      <anchor>aa20b0ccd1350d7fca8d54cdd938cdb0d</anchor>
      <arglist>(BgpFilterOP op, BgpFilterRuleCommunityMatchType type, uint32_t community)</arglist>
    </member>
    <member kind="function">
      <type>BgpFilterOP</type>
      <name>apply</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleCommunity.html</anchorfile>
      <anchor>afec89febd53af55d0c5377bb8f5031f3</anchor>
      <arglist>(const Prefix &amp;prefix, const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attribs)</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>community</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleCommunity.html</anchorfile>
      <anchor>a5722d432a50611a1c83d2ba78d428fee</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpFilterRuleRoute</name>
    <filename>classlibbgp_1_1BgpFilterRuleRoute.html</filename>
    <templarg>T</templarg>
    <base>libbgp::BgpFilterRule</base>
    <member kind="function">
      <type></type>
      <name>BgpFilterRuleRoute</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute.html</anchorfile>
      <anchor>ad6d3c9e082f231dc454c33d4b26ad986</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~BgpFilterRuleRoute</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute.html</anchorfile>
      <anchor>a488f0a59a76a3e30c246d8170ba5077d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>T</type>
      <name>prefix</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute.html</anchorfile>
      <anchor>a2faefc07cbf7754c056db88524fac124</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpFilterRuleRoute4</name>
    <filename>classlibbgp_1_1BgpFilterRuleRoute4.html</filename>
    <base>BgpFilterRuleRoute&lt; Prefix4 &gt;</base>
    <member kind="function">
      <type></type>
      <name>BgpFilterRuleRoute4</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute4.html</anchorfile>
      <anchor>a5bd5981d2c3f745b20a627c6283e5235</anchor>
      <arglist>(BgpFilterOP op, BgpFilterRuleRouteMatchType type, const Prefix4 &amp;prefix)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpFilterRuleRoute6</name>
    <filename>classlibbgp_1_1BgpFilterRuleRoute6.html</filename>
    <base>BgpFilterRuleRoute&lt; Prefix6 &gt;</base>
    <member kind="function">
      <type></type>
      <name>BgpFilterRuleRoute6</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute6.html</anchorfile>
      <anchor>a2914ea56c24b939238bd6f2a7971758b</anchor>
      <arglist>(BgpFilterOP op, BgpFilterRuleRouteMatchType type, const Prefix6 &amp;prefix)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>BgpFilterRuleRoute&lt; Prefix4 &gt;</name>
    <filename>classlibbgp_1_1BgpFilterRuleRoute.html</filename>
    <base>libbgp::BgpFilterRule</base>
    <member kind="function">
      <type></type>
      <name>BgpFilterRuleRoute</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute.html</anchorfile>
      <anchor>ad6d3c9e082f231dc454c33d4b26ad986</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~BgpFilterRuleRoute</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute.html</anchorfile>
      <anchor>a488f0a59a76a3e30c246d8170ba5077d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>Prefix4</type>
      <name>prefix</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute.html</anchorfile>
      <anchor>a2faefc07cbf7754c056db88524fac124</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>BgpFilterRuleRoute&lt; Prefix6 &gt;</name>
    <filename>classlibbgp_1_1BgpFilterRuleRoute.html</filename>
    <base>libbgp::BgpFilterRule</base>
    <member kind="function">
      <type></type>
      <name>BgpFilterRuleRoute</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute.html</anchorfile>
      <anchor>ad6d3c9e082f231dc454c33d4b26ad986</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~BgpFilterRuleRoute</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute.html</anchorfile>
      <anchor>a488f0a59a76a3e30c246d8170ba5077d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>Prefix6</type>
      <name>prefix</name>
      <anchorfile>classlibbgp_1_1BgpFilterRuleRoute.html</anchorfile>
      <anchor>a2faefc07cbf7754c056db88524fac124</anchor>
      <arglist></arglist>
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
      <anchor>a56314eaf305bf29b8b3b8eaf027b01ed</anchor>
      <arglist>(const BgpFilterRule &amp;rule)</arglist>
    </member>
    <member kind="function">
      <type>BgpFilterOP</type>
      <name>apply</name>
      <anchorfile>classlibbgp_1_1BgpFilterRules.html</anchorfile>
      <anchor>ac327fdbbab5bc6c691f26d585b0b4588</anchor>
      <arglist>(const Prefix &amp;prefix, const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attribs)</arglist>
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
      <type>BgpRib4 &amp;</type>
      <name>getRib4</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>acea4bb421e5856673c13bf409e066574</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>BgpRib6 &amp;</type>
      <name>getRib6</name>
      <anchorfile>classlibbgp_1_1BgpFsm.html</anchorfile>
      <anchor>a5e76501937300e0b1b6ceef779962c16</anchor>
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
      <type>bool</type>
      <name>addCapability</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>abdbb3b1bf931b13767600398f9682869</anchor>
      <arglist>(std::shared_ptr&lt; BgpCapability &gt; capability)</arglist>
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
    <member kind="function">
      <type>const std::vector&lt; std::shared_ptr&lt; BgpCapability &gt; &gt; &amp;</type>
      <name>getCapabilities</name>
      <anchorfile>classlibbgp_1_1BgpOpenMessage.html</anchorfile>
      <anchor>a2327d262fd04686fd53b006f072b0b37</anchor>
      <arglist>() const</arglist>
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
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a4a504e86678c06d27a54fe5ae0e7ddf6</anchor>
      <arglist>(BgpLogHandler *new_logger) const</arglist>
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
      <type>static uint8_t</type>
      <name>GetTypeFromBuffer</name>
      <anchorfile>classlibbgp_1_1BgpPathAttrib.html</anchorfile>
      <anchor>a4cc071cd3066463cba1070b0f17216c3</anchor>
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
      <type>std::vector&lt; uint32_t &gt;</type>
      <name>communites</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribCommunity.html</anchorfile>
      <anchor>a617b01836f153e7be395f80bd7a3ae5e</anchor>
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
    <name>libbgp::BgpPathAttribMpNlriBase</name>
    <filename>classlibbgp_1_1BgpPathAttribMpNlriBase.html</filename>
    <base>libbgp::BgpPathAttrib</base>
    <member kind="variable">
      <type>uint16_t</type>
      <name>afi</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpNlriBase.html</anchorfile>
      <anchor>adf8922944da6ae5b7e509a8c5bc93cc7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>safi</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpNlriBase.html</anchorfile>
      <anchor>a60b2ea2cb3d42e3eb805177422a94899</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribMpReachNlriIpv6</name>
    <filename>classlibbgp_1_1BgpPathAttribMpReachNlriIpv6.html</filename>
    <base>libbgp::BgpPathAttribMpNlriBase</base>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpReachNlriIpv6.html</anchorfile>
      <anchor>a5ca939a285a3d9d9cf109891200d80ed</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpReachNlriIpv6.html</anchorfile>
      <anchor>acd5b1b153eaf019a0f8b793318b56c6e</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpReachNlriIpv6.html</anchorfile>
      <anchor>ab6555b8dab2c737299135287b440f6cb</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpReachNlriIpv6.html</anchorfile>
      <anchor>afaf967bd934f96c975e4002f6aa8cce5</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpReachNlriIpv6.html</anchorfile>
      <anchor>acf278c412ab5a88882f3c945ed33f128</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribMpReachNlriUnknow</name>
    <filename>classlibbgp_1_1BgpPathAttribMpReachNlriUnknow.html</filename>
    <base>libbgp::BgpPathAttribMpNlriBase</base>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpReachNlriUnknow.html</anchorfile>
      <anchor>a070c200c3b2f7c3ac5a5561080074e76</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpReachNlriUnknow.html</anchorfile>
      <anchor>aeb90e558df2b2c9e7345d4b979ce9b5b</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpReachNlriUnknow.html</anchorfile>
      <anchor>a3e229edcf8218596fef7b3409b2ca6da</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpReachNlriUnknow.html</anchorfile>
      <anchor>acd6954fc52a2cf97f2ee34bd7c5ba3ba</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpReachNlriUnknow.html</anchorfile>
      <anchor>a7d8ba86100a6cf2522e3baf697359016</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribMpUnreachNlriIpv6</name>
    <filename>classlibbgp_1_1BgpPathAttribMpUnreachNlriIpv6.html</filename>
    <base>libbgp::BgpPathAttribMpNlriBase</base>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpUnreachNlriIpv6.html</anchorfile>
      <anchor>adadaeec5736c8f0ff7775ec8d80346b3</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpUnreachNlriIpv6.html</anchorfile>
      <anchor>a0894ac8422ca2518aa6ef10750b371b5</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpUnreachNlriIpv6.html</anchorfile>
      <anchor>a12a012e5f6f70bafd12702756afdbc11</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpUnreachNlriIpv6.html</anchorfile>
      <anchor>a73053d15e75bbc5d21fca138e60a254a</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpUnreachNlriIpv6.html</anchorfile>
      <anchor>a460bb6907a56653929240a4ddfe04426</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpPathAttribMpUnreachNlriUnknow</name>
    <filename>classlibbgp_1_1BgpPathAttribMpUnreachNlriUnknow.html</filename>
    <base>libbgp::BgpPathAttribMpNlriBase</base>
    <member kind="function">
      <type>BgpPathAttrib *</type>
      <name>clone</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpUnreachNlriUnknow.html</anchorfile>
      <anchor>a7da5568da49b83f767edf4bd446b7095</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpUnreachNlriUnknow.html</anchorfile>
      <anchor>af8520144910c5769ddec5387a7328e87</anchor>
      <arglist>(const uint8_t *buffer, size_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpUnreachNlriUnknow.html</anchorfile>
      <anchor>a03ff8b2335d35c92de07661bdd2f0105</anchor>
      <arglist>(uint8_t *buffer, size_t buffer_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>doPrint</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpUnreachNlriUnknow.html</anchorfile>
      <anchor>a39f2f3b501d3907aa5376e2a905399a7</anchor>
      <arglist>(size_t indent, uint8_t **to, size_t *buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>length</name>
      <anchorfile>classlibbgp_1_1BgpPathAttribMpUnreachNlriUnknow.html</anchorfile>
      <anchor>a84df486b45e90b86d75b7b2a3151808d</anchor>
      <arglist>() const</arglist>
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
    <templarg>T</templarg>
    <member kind="function" protection="protected" static="yes">
      <type>static const T *</type>
      <name>selectEntry</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a7de428e99144e8653ce8ea85bbfeb51d</anchor>
      <arglist>(const T *a, const T *b)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpRib4</name>
    <filename>classlibbgp_1_1BgpRib4.html</filename>
    <base protection="private">BgpRib&lt; BgpRib4Entry &gt;</base>
    <member kind="function">
      <type></type>
      <name>BgpRib4</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>ad88d4dee2a0072ac8864f671a148fee9</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>const BgpRib4Entry *</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>a2a0493530a85e4ca0254bfd5c59748d2</anchor>
      <arglist>(BgpLogHandler *logger, const Prefix4 &amp;route, uint32_t nexthop, int32_t weight=0)</arglist>
    </member>
    <member kind="function">
      <type>const BgpRib4Entry *</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>afca6a5543e5183036009a7942ab24a94</anchor>
      <arglist>(BgpLogHandler *logger, const Prefix4 &amp;route, uint32_t nexthop, RouteEventBus *rev_bus, int32_t weight=0)</arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; BgpRib4Entry &gt;</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>a8854134f3e2020b387a3062463605c93</anchor>
      <arglist>(BgpLogHandler *logger, const std::vector&lt; Prefix4 &gt; &amp;routes, uint32_t nexthop, int32_t weight=0)</arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; BgpRib4Entry &gt;</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>a61fb3b159815ef38b87c94d3a57e90e1</anchor>
      <arglist>(BgpLogHandler *logger, const std::vector&lt; Prefix4 &gt; &amp;routes, uint32_t nexthop, RouteEventBus *rev_bus, int32_t weight=0)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>af897bd542daa66c299507239d52f276a</anchor>
      <arglist>(uint32_t src_router_id, const Prefix4 &amp;route, const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attrib, int32_t weight)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>a2ad45030789a13776f4f74c73750dd11</anchor>
      <arglist>(uint32_t src_router_id, const std::vector&lt; Prefix4 &gt; &amp;routes, const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attrib, int32_t weight)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>withdraw</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>a965f58f55161c73dfe81ea6f10505b31</anchor>
      <arglist>(uint32_t src_router_id, const Prefix4 &amp;route)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>withdraw</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>a405aea0046696f0b3ca03ff85131ca77</anchor>
      <arglist>(uint32_t src_router_id, const Prefix4 &amp;route, RouteEventBus *rev_bus)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>withdraw</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>a40fc76532e0f0add2e595325f4d57267</anchor>
      <arglist>(uint32_t src_router_id, const std::vector&lt; Prefix4 &gt; &amp;routes)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>withdraw</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>ad3f26654c3628c1b9e74bd7da7678b3a</anchor>
      <arglist>(uint32_t src_router_id, const std::vector&lt; Prefix4 &gt; &amp;routes, RouteEventBus *rev_bus)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; Prefix4 &gt;</type>
      <name>discard</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>afbc39248020e25cb8ee12605c873e72e</anchor>
      <arglist>(uint32_t src_router_id)</arglist>
    </member>
    <member kind="function">
      <type>const BgpRib4Entry *</type>
      <name>lookup</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>ad6a73acf7660de343ecded38e29c9b12</anchor>
      <arglist>(uint32_t dest) const</arglist>
    </member>
    <member kind="function">
      <type>const BgpRib4Entry *</type>
      <name>lookup</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>a37a69152eb842ca584970e9ff1364e81</anchor>
      <arglist>(uint32_t src_router_id, uint32_t dest) const</arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; BgpRib4Entry &gt; &amp;</type>
      <name>get</name>
      <anchorfile>classlibbgp_1_1BgpRib4.html</anchorfile>
      <anchor>a79850059f65098fa4506d3679cdec885</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpRib4Entry</name>
    <filename>classlibbgp_1_1BgpRib4Entry.html</filename>
    <base>BgpRibEntry&lt; BgpRib4Entry &gt;</base>
    <member kind="function">
      <type></type>
      <name>BgpRib4Entry</name>
      <anchorfile>classlibbgp_1_1BgpRib4Entry.html</anchorfile>
      <anchor>a3c36b50e9bdbe9e3f7cfb2065e77004d</anchor>
      <arglist>(Prefix4 r, uint32_t src, const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; attribs)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getNexthop</name>
      <anchorfile>classlibbgp_1_1BgpRib4Entry.html</anchorfile>
      <anchor>af03570507fafb4f9ee64b2d2e275c7e2</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>Prefix4</type>
      <name>route</name>
      <anchorfile>classlibbgp_1_1BgpRib4Entry.html</anchorfile>
      <anchor>a794748f7a2c4fa9c69146e64932f0034</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpRib6</name>
    <filename>classlibbgp_1_1BgpRib6.html</filename>
    <base protection="private">BgpRib&lt; BgpRib6Entry &gt;</base>
    <member kind="function">
      <type></type>
      <name>BgpRib6</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>a6fcab2dadb7a4723d5934b5df282b69f</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
    </member>
    <member kind="function">
      <type>const BgpRib6Entry *</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>a44aca85058b1b6b5120d71552cf524c9</anchor>
      <arglist>(BgpLogHandler *logger, const Prefix6 &amp;route, const uint8_t nexthop_global[16], const uint8_t nexthop_linklocal[16], int32_t weight=0)</arglist>
    </member>
    <member kind="function">
      <type>const BgpRib6Entry *</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>ad6138f4ce110fba0c78a7ccfc220a4d1</anchor>
      <arglist>(BgpLogHandler *logger, const Prefix6 &amp;route, const uint8_t nexthop_global[16], const uint8_t nexthop_linklocal[16], RouteEventBus *rev_bus, int32_t weight=0)</arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; BgpRib6Entry &gt;</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>a196ffdd62d2af964783ad199dec13b63</anchor>
      <arglist>(BgpLogHandler *logger, const std::vector&lt; Prefix6 &gt; &amp;routes, const uint8_t nexthop_global[16], const uint8_t nexthop_linklocal[16], int32_t weight=0)</arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; BgpRib6Entry &gt;</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>af17caf324edf4009ec2111064ae4d1f6</anchor>
      <arglist>(BgpLogHandler *logger, const std::vector&lt; Prefix6 &gt; &amp;routes, const uint8_t nexthop_global[16], const uint8_t nexthop_linklocal[16], RouteEventBus *rev_bus, int32_t weight=0)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>a1d556b7a174d55a7973d774e281cc2da</anchor>
      <arglist>(uint32_t src_router_id, const Prefix6 &amp;route, const uint8_t nexthop_global[16], const uint8_t nexthop_linklocal[16], const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attrib, int32_t weight)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>insert</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>a80033d2bed4cdc9e27c202d68d1b86ad</anchor>
      <arglist>(uint32_t src_router_id, const std::vector&lt; Prefix6 &gt; &amp;routes, const uint8_t nexthop_global[16], const uint8_t nexthop_linklocal[16], const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; &amp;attrib, int32_t weight)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>withdraw</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>ae736541ca97f87ca50b4abe213611179</anchor>
      <arglist>(uint32_t src_router_id, const Prefix6 &amp;route)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>withdraw</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>a24dcc2421339b1a1c400799dc33828ab</anchor>
      <arglist>(uint32_t src_router_id, const std::vector&lt; Prefix6 &gt; &amp;routes)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; Prefix6 &gt;</type>
      <name>discard</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>a5697a1d80f91500c339c2942dd388156</anchor>
      <arglist>(uint32_t src_router_id)</arglist>
    </member>
    <member kind="function">
      <type>const BgpRib6Entry *</type>
      <name>lookup</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>a2963c24cf5798f021a5d0a544d4c1eb0</anchor>
      <arglist>(const uint8_t dest[16]) const</arglist>
    </member>
    <member kind="function">
      <type>const BgpRib6Entry *</type>
      <name>lookup</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>a9617dde24cd888e23c7aae988fa98299</anchor>
      <arglist>(uint32_t src_router_id, const uint8_t dest[16]) const</arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; BgpRib6Entry &gt; &amp;</type>
      <name>get</name>
      <anchorfile>classlibbgp_1_1BgpRib6.html</anchorfile>
      <anchor>af0c2d60113717f4884c7e46fb9de9535</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpRib6Entry</name>
    <filename>classlibbgp_1_1BgpRib6Entry.html</filename>
    <base>BgpRibEntry&lt; BgpRib6Entry &gt;</base>
    <member kind="function">
      <type></type>
      <name>BgpRib6Entry</name>
      <anchorfile>classlibbgp_1_1BgpRib6Entry.html</anchorfile>
      <anchor>ac5198cc777526017265cc57dc4704543</anchor>
      <arglist>(Prefix6 r, uint32_t src, const uint8_t nexthop_global[16], const uint8_t nexthop_linklocal[16], const std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt;&gt; attribs)</arglist>
    </member>
    <member kind="variable">
      <type>Prefix6</type>
      <name>route</name>
      <anchorfile>classlibbgp_1_1BgpRib6Entry.html</anchorfile>
      <anchor>a75c1817f59af0a62b1646e1214a84cbb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>nexthop_global</name>
      <anchorfile>classlibbgp_1_1BgpRib6Entry.html</anchorfile>
      <anchor>a542e72d5223d620a1084baa77de62adf</anchor>
      <arglist>[16]</arglist>
    </member>
    <member kind="variable">
      <type>uint8_t</type>
      <name>nexthop_linklocal</name>
      <anchorfile>classlibbgp_1_1BgpRib6Entry.html</anchorfile>
      <anchor>a7a9ab047cccf1bb88fb02fee23e41c56</anchor>
      <arglist>[16]</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>BgpRib&lt; BgpRib4Entry &gt;</name>
    <filename>classlibbgp_1_1BgpRib.html</filename>
    <member kind="function" protection="protected" static="yes">
      <type>static const BgpRib4Entry *</type>
      <name>selectEntry</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a7de428e99144e8653ce8ea85bbfeb51d</anchor>
      <arglist>(const BgpRib4Entry *a, const BgpRib4Entry *b)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>BgpRib&lt; BgpRib6Entry &gt;</name>
    <filename>classlibbgp_1_1BgpRib.html</filename>
    <member kind="function" protection="protected" static="yes">
      <type>static const BgpRib6Entry *</type>
      <name>selectEntry</name>
      <anchorfile>classlibbgp_1_1BgpRib.html</anchorfile>
      <anchor>a7de428e99144e8653ce8ea85bbfeb51d</anchor>
      <arglist>(const BgpRib6Entry *a, const BgpRib6Entry *b)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::BgpRibEntry</name>
    <filename>classlibbgp_1_1BgpRibEntry.html</filename>
    <templarg>T</templarg>
    <member kind="function">
      <type>bool</type>
      <name>operator&gt;</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>acee75ead8e7fdc9e17d7584ed0958db3</anchor>
      <arglist>(const T &amp;other) const</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>src_router_id</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a4fe32489231c3e84cbffd205c7be75cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint64_t</type>
      <name>update_id</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a488f3f6505d949b83c39e78b166aa446</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int32_t</type>
      <name>weight</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a08966de6cb5a1996eb2062f4e398b69f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt; &gt;</type>
      <name>attribs</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a9a3d9a86bd70cc7f4cc98c58fda6f159</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>BgpRibEntry&lt; BgpRib4Entry &gt;</name>
    <filename>classlibbgp_1_1BgpRibEntry.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator&gt;</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>acee75ead8e7fdc9e17d7584ed0958db3</anchor>
      <arglist>(const BgpRib4Entry &amp;other) const</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>src_router_id</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a4fe32489231c3e84cbffd205c7be75cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint64_t</type>
      <name>update_id</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a488f3f6505d949b83c39e78b166aa446</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int32_t</type>
      <name>weight</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a08966de6cb5a1996eb2062f4e398b69f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt; &gt;</type>
      <name>attribs</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a9a3d9a86bd70cc7f4cc98c58fda6f159</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>BgpRibEntry&lt; BgpRib6Entry &gt;</name>
    <filename>classlibbgp_1_1BgpRibEntry.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator&gt;</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>acee75ead8e7fdc9e17d7584ed0958db3</anchor>
      <arglist>(const BgpRib6Entry &amp;other) const</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>src_router_id</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a4fe32489231c3e84cbffd205c7be75cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint64_t</type>
      <name>update_id</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a488f3f6505d949b83c39e78b166aa446</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int32_t</type>
      <name>weight</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a08966de6cb5a1996eb2062f4e398b69f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt; &gt;</type>
      <name>attribs</name>
      <anchorfile>classlibbgp_1_1BgpRibEntry.html</anchorfile>
      <anchor>a9a3d9a86bd70cc7f4cc98c58fda6f159</anchor>
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
      <anchor>af6f59eb30ff7ca7c3432e98867b7d8cb</anchor>
      <arglist>(bool use_4b_asn)</arglist>
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
      <name>setWithdrawn4</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a57f3220e615ad5f23f6e630ac29db85d</anchor>
      <arglist>(const std::vector&lt; Prefix4 &gt; &amp;routes)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>addWithdrawn4</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a55a02491221b959078514371a89ba6ac</anchor>
      <arglist>(uint32_t prefix, uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>addWithdrawn4</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>af3e17f9c3760be4ec89bf1e1d8dd9d4f</anchor>
      <arglist>(const Prefix4 &amp;route)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setNlri4</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a8e45e1f6fa0e7a1215a5d36d0ba032c3</anchor>
      <arglist>(const std::vector&lt; Prefix4 &gt; &amp;routes)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>addNlri4</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>a08fc92a99ee403372871b9de1107ef9f</anchor>
      <arglist>(uint32_t prefix, uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>addNlri4</name>
      <anchorfile>classlibbgp_1_1BgpUpdateMessage.html</anchorfile>
      <anchor>aa988c6d5e8d960726d42b5c729afcfd5</anchor>
      <arglist>(const Prefix4 &amp;route)</arglist>
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
  <compound kind="struct">
    <name>std::hash&lt; std::tuple&lt; TT... &gt; &gt;</name>
    <filename>structstd_1_1hash_3_01std_1_1tuple_3_01TT_8_8_8_01_4_01_4.html</filename>
    <templarg>TT</templarg>
  </compound>
  <compound kind="class">
    <name>libbgp::Prefix</name>
    <filename>classlibbgp_1_1Prefix.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1Prefix.html</anchorfile>
      <anchor>acf2ee6803ebce418c697430cfc046232</anchor>
      <arglist>(const uint8_t *buffer, size_t buf_sz)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1Prefix.html</anchorfile>
      <anchor>ab21592d21342cce91c31da809ce0d423</anchor>
      <arglist>(uint8_t *buffer, size_t buf_sz) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix.html</anchorfile>
      <anchor>a61ac0db68a4a18d9134a3b0772dc3aa4</anchor>
      <arglist>(const Prefix &amp;other) const =0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::Prefix4</name>
    <filename>classlibbgp_1_1Prefix4.html</filename>
    <base>libbgp::Prefix</base>
    <member kind="function">
      <type></type>
      <name>Prefix4</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>af1fade993c9763361317543e8d5abb0a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Prefix4</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>af7244ae9d1612869703dcb7673cc5c7d</anchor>
      <arglist>(uint32_t prefix, uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Prefix4</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>ad3ca6b48c1fa2c42f2a194d73790a385</anchor>
      <arglist>(const char *prefix, uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>a7af1a33736bd89b5f01cb24ec032799d</anchor>
      <arglist>(const uint8_t *buffer, size_t buf_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>ae186605d9fc1b40330c8f8bf58665a51</anchor>
      <arglist>(uint8_t *buffer, size_t buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>a6b8c14a998e20b0ab557ab834734d880</anchor>
      <arglist>(uint32_t address) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>ac0bce62f079adef51ccbd2cd499163f5</anchor>
      <arglist>(const char *address) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>af8d7bc2e299b5345d3e9c3b0f7257358</anchor>
      <arglist>(const Prefix &amp;other) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>a76278a0da2a763790188b8341f710abe</anchor>
      <arglist>(uint32_t prefix, uint8_t length) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>ab04cd4333e175b86de3ab2039d458923</anchor>
      <arglist>(const char *prefix, uint8_t length) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>ac347d45af10322846a877d25e56831df</anchor>
      <arglist>(const Prefix &amp;other) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>add0ddaaf3b2b1802e5e0b172549a1d83</anchor>
      <arglist>(uint32_t prefix, uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setPrefix</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>a59936ec1ad1b50be588ea1a3d910a593</anchor>
      <arglist>(uint32_t prefix)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setLength</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>a3b16ce242bd2c2cd438899c922c63fa9</anchor>
      <arglist>(uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getPrefix</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>ac3e173c54a8d25861f6a83709185d69c</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>uint8_t</type>
      <name>getLength</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>ad4842f5b23e4e729d82715badb5d22b8</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getMask</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>a17753f7a3e0e48fb56eb20f9db5c13b1</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>Includes</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>a642453d2ef6a27f54b9deab6655c6f29</anchor>
      <arglist>(uint32_t prefix, uint8_t length, uint32_t address)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>Includes</name>
      <anchorfile>classlibbgp_1_1Prefix4.html</anchorfile>
      <anchor>a54acfa174882e5af4bc4438931638a1f</anchor>
      <arglist>(uint32_t prefix_a, uint8_t length_a, uint32_t prefix_b, uint8_t length_b)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::Prefix6</name>
    <filename>classlibbgp_1_1Prefix6.html</filename>
    <base>libbgp::Prefix</base>
    <member kind="function">
      <type></type>
      <name>Prefix6</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>ae7ddd6e750f1d1da43bff3c94c2e8d47</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Prefix6</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>a8aa2824b460b8c74eb37d4f4083b8778</anchor>
      <arglist>(const uint8_t prefix[16], uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Prefix6</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>ad36d62dca83eae0be64205307a4fbab4</anchor>
      <arglist>(const char *prefix, uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>parse</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>a3e81f31ba7fa22daaad5218f2f0ba6ee</anchor>
      <arglist>(const uint8_t *buffer, size_t buf_sz)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>write</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>a6c4877cece3800aaf2907c25ff96168d</anchor>
      <arglist>(uint8_t *buffer, size_t buf_sz) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>ac01cb007dcef25a8f33e706ee4e6988b</anchor>
      <arglist>(const uint8_t address[16]) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>a801e45f9c4507859020e53e22676bab1</anchor>
      <arglist>(const char *address) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>a616992635705e805e5ea6635c87fe737</anchor>
      <arglist>(const Prefix &amp;other) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>ae0bcb89fe6bc7f3d61089cfdee9aa54c</anchor>
      <arglist>(const uint8_t prefix[16], uint8_t length) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>includes</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>a9c39a78b1beeca9c7baab6e440dc9327</anchor>
      <arglist>(const char *prefix, uint8_t length) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>aeb8401d66621a5a7f1a1721b69a90456</anchor>
      <arglist>(const Prefix &amp;other) const</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>set</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>ade96e315abe476a413ca7c61c50a40ad</anchor>
      <arglist>(const uint8_t prefix[16], uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setPrefix</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>abbfa7589291f7a80abdcbdfa66e3abeb</anchor>
      <arglist>(const uint8_t prefix[16])</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setLength</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>ac6ebc68e3590bd6fb41e716bf61fd7b4</anchor>
      <arglist>(uint8_t length)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getPrefix</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>af880a0b11a8cf75b24dd9733a7249a17</anchor>
      <arglist>(uint8_t prefix[16]) const</arglist>
    </member>
    <member kind="function">
      <type>uint8_t</type>
      <name>getLength</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>a92a5ef717e04060522463ca56b1f240f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getMask</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>af98b54b812a42b9cde3800a5d1bd6c2f</anchor>
      <arglist>(uint8_t mask[16]) const</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>Includes</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>ab3863006c6f0b72eee13e162d61560ac</anchor>
      <arglist>(const uint8_t prefix[16], uint8_t length, const uint8_t address[16])</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>Includes</name>
      <anchorfile>classlibbgp_1_1Prefix6.html</anchorfile>
      <anchor>a599da4ae6c035ed1fe7ee5f89497fd85</anchor>
      <arglist>(const uint8_t prefix_a[16], uint8_t length_a, const uint8_t prefix_b[16], uint8_t length_b)</arglist>
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
    <name>libbgp::Route4AddEvent</name>
    <filename>classlibbgp_1_1Route4AddEvent.html</filename>
    <base>libbgp::RouteEvent</base>
    <member kind="variable">
      <type>std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt; &gt;</type>
      <name>attribs</name>
      <anchorfile>classlibbgp_1_1Route4AddEvent.html</anchorfile>
      <anchor>a791bed462f59f3e3e0c6639da55d8e05</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; Prefix4 &gt;</type>
      <name>routes</name>
      <anchorfile>classlibbgp_1_1Route4AddEvent.html</anchorfile>
      <anchor>a5f8a29430123e0000f6b64560e20d68f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::Route4WithdrawEvent</name>
    <filename>classlibbgp_1_1Route4WithdrawEvent.html</filename>
    <base>libbgp::RouteEvent</base>
    <member kind="variable">
      <type>std::vector&lt; Prefix4 &gt;</type>
      <name>routes</name>
      <anchorfile>classlibbgp_1_1Route4WithdrawEvent.html</anchorfile>
      <anchor>a8e065e94df550d81287c0f74f87304a0</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::Route6AddEvent</name>
    <filename>classlibbgp_1_1Route6AddEvent.html</filename>
    <base>libbgp::RouteEvent</base>
    <member kind="variable">
      <type>std::vector&lt; std::shared_ptr&lt; BgpPathAttrib &gt; &gt;</type>
      <name>attribs</name>
      <anchorfile>classlibbgp_1_1Route6AddEvent.html</anchorfile>
      <anchor>acd004019bdab776398fe85fbf6942dbe</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; Prefix6 &gt;</type>
      <name>routes</name>
      <anchorfile>classlibbgp_1_1Route6AddEvent.html</anchorfile>
      <anchor>a599e85674c082bb3b5e010876335e310</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>libbgp::Route6WithdrawEvent</name>
    <filename>classlibbgp_1_1Route6WithdrawEvent.html</filename>
    <base>libbgp::RouteEvent</base>
    <member kind="variable">
      <type>std::vector&lt; Prefix6 &gt;</type>
      <name>routes</name>
      <anchorfile>classlibbgp_1_1Route6WithdrawEvent.html</anchorfile>
      <anchor>a5bfdc1adc2fdf8e85e709a4e6cdcdbe9</anchor>
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
    <member kind="function">
      <type>void</type>
      <name>setLogger</name>
      <anchorfile>classlibbgp_1_1Serializable.html</anchorfile>
      <anchor>ade6ecd8173f40f0b5fa6021468632b16</anchor>
      <arglist>(BgpLogHandler *logger)</arglist>
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
