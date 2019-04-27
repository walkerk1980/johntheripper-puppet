class johntheripper::install inherits johntheripper {
  include apt
 
  exec { 'johntheripper-update-apt':
    command => '/usr/bin/apt-get update',
    refreshonly => true,
  }

  package { 'john' :
    ensure => latest,
    provider => apt,
    require => Exec['johntheripper-update-apt'],
  }

  package { 'john-data' :
    ensure => latest,
    provider => apt,
    require => Exec['johntheripper-update-apt'],
  }

}
