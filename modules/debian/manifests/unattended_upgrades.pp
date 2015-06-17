class debian::unattended_upgrades {
  package { 'unattended-upgrades': ensure => present }

  file { '/etc/apt/apt.conf.d/99puppet-unattended-upgrades':
    ensure  => present,
    content => template('debian/unattended-upgrades-apt-conf.erb'),
  }
}
