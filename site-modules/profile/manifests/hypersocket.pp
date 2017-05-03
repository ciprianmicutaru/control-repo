# Install Hypersocket Prime
class profile::hypersocket {
  archive { '/tmp/hypersocket.deb':
    source       => hiera('hypersocket::deb_url'),
    extract      => false,
  }
}
