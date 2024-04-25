# File: 1-install_a_package.pp

# Puppet manifest to install Flask from pip3
class { 'python':
  version => 'present',
}

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command     => 'pip3 install Flask==2.1.0',
  path        => ['/usr/bin', '/bin'],
  environment => ['PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'],
  unless      => 'pip3 show Flask | grep -q "Version: 2.1.0"',
  timeout     => 300, # Adjust timeout if needed
}

# Ensure that pip3 has been installed before trying to install Flask
Package['python3-pip'] -> Exec['install_flask']
