class ntp {
  include ntp::config, ntp::service
}
class ntp::config {
    File{
      notify => Class["ntp::service"],
      owner  => "root",
      group  => "root",
      mode   => 644,
      backup => true,
    }
    file{ "/etc/ntp.conf":
      source => "puppet:///ntp/ntp.conf";
    }
}
class ntp::service {
    service{"ntpd":
    ensure => running,
    enable => true,
    require =>Class["ntp::config"],
  }
}

