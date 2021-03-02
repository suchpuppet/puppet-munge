# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include munge::service
class munge::service {
  include munge
  include munge::install

  service { $::munge::service_name:
    ensure    => 'running',
    enable    => true,
    subscribe => Class['munge::install'],
  }
}
