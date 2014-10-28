drupaldev-centos
==========

Vagrant puppet drupal environment with nginx and mongodb

Originaly take from https://github.com/mikebell/drupaldev-nginx

It assumes that you have CentOS virtual box with almost everything pre-installed. It just configures nginx. 

adds mongodb and doesn't require Librarian Puppet

#Dependencies
* Vagrant - http://www.vagrantup.com/
* VirtualBox - https://www.virtualbox.org/
* 

after installing Vagrant and VirtualBox install nfs. Run in command line:
* vagrant plugin install vagrant-winnfsd

To start VM type:
`vagrant up`

After it starts you can loging into VM with
vagrant ssh

#VM Info
* Default IP 33.33.33.10
* Ubuntu 12.04
* Mysql root password: drupaldev
* put 33.33.33.10 local.artofliving.org in your hosts file  
* 

#Make Virtual Box faster
* Open Virtual Box manager and go to settings of your VM
* Do changes as here http://blog.jdpfu.com/2012/09/14/solution-for-slow-ubuntu-in-virtualbox