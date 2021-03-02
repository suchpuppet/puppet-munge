# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include munge::key
class munge::key {
  include munge
  include munge::install

  if defined($munge::key_source) {
    file { '/etc/munge/munge.key':
      ensure => file,
      owner  => 'munge',
      group  => 'munge',
      mode   => '0600',
      source => $munge::key_source,
      notify => Class['munge::service'],
    }
  } else {
    exec { 'create_munge_key':
      command  => 'create-munge-key -f',
      unless   => 'test -f /etc/munge/munge.key',
      provider => 'shell',
      require  => Class['munge::install'],
      notify   => Class['munge::service'],
    }
  }
}
