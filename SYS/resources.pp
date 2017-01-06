    package { 'puppet':
      ensure => '2.6.4-0.5.fc14'
    }

    # an example host file entry resource
    $ puppet resource host localhost.localdomain  # puppet 2.6 or greater
    $ ralsh host localhost.localdomain            # puppet 2.5 or less
    host { 'localhost.localdomain':
      ensure       => 'present',
      target       => '/etc/hosts',
      ip           => '127.0.0.1',
      host_aliases => ['localhost','puppet']
    }
    # an example user resource
    $ puppet resource user daemon   # puppet 2.6 or greater
    $ ralsh user daemon             # puppet 2.5 or less
user { 'daemon':
    ensure           => 'present',
    home             => '/sbin',
    password_min_age => '0',
    uid              => '2',
    shell            => '/sbin/nologin',
    password_max_age => '99999',
    password         => '*',
    gid              => '2',
    groups           => ['bin','daemon','adm','lp'],
    comment          => 'daemon'
}
