node default {

  janus::role::standalone{ 'janus':
    hostname            => $::facts['janus_hostname'],
    core_dump           => false,
    transport_http_port => 8300,
    transport_ws_port   => 8310,
    rtp_port_range_min  => 20000,
    rtp_port_range_max  => 25000,

    plugin_rtpb_minport => 8000,
    plugin_rtpb_maxport => 9000,
  }

}
