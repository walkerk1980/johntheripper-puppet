class johntheripper::config inherits johntheripper {

#  file { '/etc/skel/.bashrc' :
#    require => Class['johntheripper::install'],
#    ensure => present,
#    owner => root,
#    group => root,
#    mode => '0440',
#    source => 'puppet:///modules/johntheripper/.bashrc',
#  }


}
