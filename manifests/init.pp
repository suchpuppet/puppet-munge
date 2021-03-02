# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include munge
class munge (
  String $package_version,
  String $service_name,
  String $key_source,
) {
  include munge::install
  include munge::service
  include munge::key
}
