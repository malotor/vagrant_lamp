# Vagrant Lamp
=========

Based in [https://github.com/vagrantee/vagrantee](https://github.com/vagrantee/vagrantee)

## Install

Clone this repo

``git clone https://github.com/malotor/vagrant_lamp.git`

Init and update the submodules (puppet modules are added as submodules)

``git submodule init``

``git submodule update``

Modify project variables from

``/puppet/manifests/default.pp``

``
	class { 'project':
	  doc_root        => '/vagrant/web',
	  mysql_db        => 'drupal',
	  mysql_user      => 'drupal',
	  mysql_pass      => 'drupal01',
	  drush_version   => '7.0.0-alpha8',
	  server_name     => 'awesome.dev',
	}
``

``vagrant up``

Your project will be accesible in

http://awesome.dev


## MySql
=====
user: root
pass: root

Vhost Template



## phpmyadmin
=====

http://awesome.dev:8000

login: root
password: root


## Guest Additions

If you see a error like this while provisioning the virtual machine

´´
An error occurred during installation of VirtualBox Guest Additions 4.3.10. Some functionality may not work as intended.
In most cases it is OK that the "Window System drivers" installation failed.
´´

You must install vagran plugin "vagrant-vbguest"

´´´vagrant plugin install vagrant-vbguest´´

And then in the guest 

´´vagrant ssh´´


´´sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions´´