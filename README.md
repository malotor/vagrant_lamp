# Vagrant Lamp

Based in [https://github.com/vagrantee/vagrantee](https://github.com/vagrantee/vagrantee)

## Install

Clone this repo

	$ git clone https://github.com/malotor/vagrant_lamp.git vagrant_lamp

Init and update the submodules (puppet modules are added as submodules)

	$ cd vagrant_lamp
	$ git submodule init
	$ git submodule update

Modify project variables from

	/puppet/manifests/default.pp
	
	
	class { 'project':
		doc_root        => '/vagrant/web',
		mysql_db        => 'drupal',
		mysql_user      => 'drupal',
		mysql_pass      => 'drupal01',
		drush_version   => '7.0.0-alpha8',
		server_name     => 'awesome.dev',
	}


Modify your /etc/hosts files

	192.168.33.101 awesome.dev

Up vagrant

	$ vagrant up


Your project will be accesible in

	http://awesome.dev


## MySql

Root access:

user: root
pass: root

## phpmyadmin

http://awesome.dev:8000
login: root
password: root


## Guest Additions

If you see a error like this while provisioning the virtual machine


An error occurred during installation of VirtualBox Guest Additions 4.3.10. Some functionality may not work as intended.
In most cases it is OK that the "Window System drivers" installation failed.


You must install vagran plugin "vagrant-vbguest" in host

	vagrant plugin install vagrant-vbguest

And then in the guest 

	sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
