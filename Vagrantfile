Vagrant.configure("2") do |config|
 config.vm.box = "centos65-64-v2"
 #config.vm.box_url = "centos65-64-v2.box"

  config.vm.hostname = "drupal.dev"

  config.vm.network :private_network, ip: "33.33.33.10"
    config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 1024]
    #v.customize ["modifyvm", :id, "--cpuexecutioncap", 80]
    #v.gui = true
  end
  

  #config.vm.synced_folder "./sites", "/var/www", type: "rsync", rsync__exclude: ".git/", rsync__auto: true
  config.vm.synced_folder "./sites", "/var/www", :nfs => true 
  
  #config.vm.provision :shell, :inline => "sudo yum update -y"
  config.vm.provision :shell, :path => "upgrade_puppet.sh"

  config.vm.provision :puppet do |puppet|
    puppet.facter = {
      "ssh_username" => "vagrant"
    }

    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    puppet.options = ["--verbose", "--hiera_config /vagrant/hiera.yaml"]
  end

  config.ssh.username = "vagrant"
end
