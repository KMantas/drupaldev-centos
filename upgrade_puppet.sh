#!/bin/bash

PUPPET_VERSION=$(puppet --version)

sudo ln -s /opt/VBoxGuestAdditions-4.3.14/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions

if [[ ${PUPPET_VERSION} != 3.*.* ]]
then
  sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
  #yum install -y lsb-release
  #ISTRIB_CODENAME=$(lsb_release --codename --short)
  #DEB="puppetlabs-release-${DISTRIB_CODENAME}.deb"
  #DEB_PROVIDES="/etc/apt/sources.list.d/puppetlabs.list" # Assume that this file's existence means we have the Puppet Labs repo added

  #if [ ! -e $DEB_PROVIDES ]
  #then
      # Print statement useful for debugging, but automated runs of this will interpret any output as an error
      # print "Could not find $DEB_PROVIDES - fetching and installing $DEB"
  #    wget -q http://apt.puppetlabs.com/$DEB
  #    sudo dpkg -i $DEB
  #fi
  #sudo yum update -y
  sudo yum install -y puppet
fi

service ip6tables stop
chkconfig ip6tables off
service iptables stop
chkconfig iptables off

