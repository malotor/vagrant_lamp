/*********************************************************************
* Default manifest file using Vagrantee module
* see modules/vagrantee/manifests/init.pp for the module parameters
**********************************************************************/

class { 'project':
  doc_root        => '/vagrant/htdocs/cibbva',
  mysql_db        => 'cibbva',
  mysql_user      => 'drupal',
  mysql_pass      => 'drupal01',
  drush_version   => '7.0.0-alpha8',
  server_name     => 'cibbva.dev',
}