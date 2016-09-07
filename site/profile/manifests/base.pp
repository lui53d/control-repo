class profile::base {

  #the base profile should include component modules that will be on all nodes

  class { '::ntp':
    servers => [ 'ntp1.corp.com', 'ntp2.corp.com' ],
  }

  network::mroute { 'enp0s8':
    routes => {
      '192.168.2.0/24' => '0.0.0.0',
    }
  }

}
