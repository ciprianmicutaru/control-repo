# Install Hypersocket Prime
class profile::hypersocket {
  include java

  archive { '/tmp/hypersocket.deb':
    source  => hiera('hypersocket::deb_url'),
    extract => false,
  }
    
  package { 'hypersocket-one':
    ensure   => installed,
    provider => dpkg,
    source   => '/tmp/hypersocket.deb'
  }
}
