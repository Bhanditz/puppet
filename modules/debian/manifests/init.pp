class debian {
  $pkglist = hiera('packages') + hiera('extra_packages')

  $pkglist.each |$p| {
    package { $p:
      ensure => present
    }
  }

  include debian::unattended_upgrades
}
