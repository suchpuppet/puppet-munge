# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include munge::install
class munge::install {
  include munge

  package { 'munge':
    ensure => $munge::package_version,
  }
}
