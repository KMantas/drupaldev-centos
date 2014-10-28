#DrupalDev nginx

[Support on Gittip](https://www.gittip.com/mikebell/)

Vagrant configuration for Drupal Development. Supports Drupal 6/7/8. Built in Drush and Composer.

Need Help? Consult the [wiki](https://github.com/mikebell/drupaldev-nginx/wiki) first before submitting an issue.

#Tools
2. Easier handling of vhosts and dbs (see example.yaml)
3. Drush
4. Compass
6. APC / Memcache
7. Mailcatcher - Can be accessed by appending :1080 to any vagrant url
8. XHProf
9. Solr

#Dependencies
* Xcode with Command Line Tools installed
* Vagrant - http://www.vagrantup.com/
* VirtualBox - https://www.virtualbox.org/
* Librarian Puppet - https://github.com/rodjek/librarian-puppet
* Pupppet Gem - `gem install puppet`

#Install

1. Clone Me
2. `cd drupaldev-nginx`
3. `librarian-puppet install`
3. `mkdir sites`
4. `cp hieradata/example.yaml hieradata/sites.yaml`
5. Amend hieradata/sites.yaml as required to desired server/virtualhost name and db details
6. `vagrant up`

#VM Info
* Default IP 33.33.33.10
* Sites built as *.drupal.dev (use dnsmasq)
* Ubuntu 12.04
* Mysql root password: drupaldev
* For Windows users on Vagrant 1.5.0+ uncomment line 15 in Vagrantfile to use SMB sharing.

#XHProf Details
* Visible at xhprof.drupal.dev
* XHProf Directory - `/usr/share/php`
* XHProf URL - `http://xhprof.drupal.dev`
