# File: 0-create_a_file.pp

# Puppet manifest to create a file in /tmp
file { '/tmp/school':
  ensure  => present,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => "I love Puppet\n",
}
