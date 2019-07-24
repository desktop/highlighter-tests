# == Class: automysqlbackup
#
# Puppet module to install AutoMySQLBackup for periodic MySQL backups.
#
# class { 'automysqlbackup':
#   backup_dir => '/mnt/backups',
# }
#

class automysqlbackup (
  $bin_dir = $automysqlbackup::params::bin_dir,
  $etc_dir = $automysqlbackup::params::etc_dir,
  $backup_dir = $automysqlbackup::params::backup_dir,
  $install_multicore = undef,
  $config = {},
  $config_defaults = {},
) inherits automysqlbackup::params {

# Ensure valid paths are assigned
  validate_absolute_path($bin_dir)
  validate_absolute_path($etc_dir)
  validate_absolute_path($backup_dir)

# Create a subdirectory in /etc for config files
  file { $etc_dir:
    ensure => directory,
    owner => 'root',
    group => 'root',
    mode => '0750',
  }

# Create an example backup file, useful for reference
  file { "${etc_dir}/automysqlbackup.conf.example":
    ensure => file,
    owner => 'root',
    group => 'root',
    mode => '0660',
    source => 'puppet:///modules/automysqlbackup/automysqlbackup.conf',
  }

# Add files from the developer
  file { "${etc_dir}/AMB_README":
    ensure => file,
    source => 'puppet:///modules/automysqlbackup/AMB_README',
  }
  file { "${etc_dir}/AMB_LICENSE":
    ensure => file,
    source => 'puppet:///modules/automysqlbackup/AMB_LICENSE',
  }

# Install the actual binary file
  file { "${bin_dir}/automysqlbackup":
    ensure => file,
    owner => 'root',
    group => 'root',
    mode => '0755',
    source => 'puppet:///modules/automysqlbackup/automysqlbackup',
  }

# Create the base backup directory
  file { $backup_dir:
    ensure => directory,
    owner => 'root',
    group => 'root',
    mode => '0755',
  }

# If you'd like to keep your config in hiera and pass it to this class
  if !empty($config) {
    create_resources('automysqlbackup::backup', $config, $config_defaults)
  }

# If using RedHat family, must have the RPMforge repo's enabled
  if $install_multicore {
    package { ['pigz', 'pbzip2']: ensure => installed }
  }

}
