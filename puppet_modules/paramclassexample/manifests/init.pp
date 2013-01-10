class paramclassexample {
  if $ipaddress == undef {
    notify {"ipaddress is undef":}
  }
  else
  {
      #calling class below
      include echo_message
  }
  

}
class echo_message {
    notify {"fact_stomp_port = $fact_stomp_port":}
    notify {"fact_stomp_server = $fact_stomp_server":}
    notify {"hardware_platform = $hardware_platform":}
}
    
