class deploy_tools {

  file { "/x/tools":
    ensure  => directory,
    purge   => true,
    recurse => true,
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
    source  => "puppet:///modules/deploy_tools/tools",
    backup  => true,
  }
}
