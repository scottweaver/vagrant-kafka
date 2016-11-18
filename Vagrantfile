# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  config.vm.box = "puppetlabs/centos-6.6-64-puppet"
  config.ssh.forward_agent = true # So that boxes don't have to setup key-less ssh
  config.ssh.insert_key = false # To generate a new ssh key and don't use the default Vagrant one
 
  # common provisioning for all 
  config.vm.provision "shell", path: "scripts/init.sh"
  config.vm.box_download_insecure = true
  config.vm.synced_folder "../kafka-0.10.0.0_shared", "/vagrant_shared", create: true

  config.vm.hostname = "kafka"
  # config.vm.network "private_network", ip: "192.168.33.24", netmask: "255.255.255.0", virtualbox__intnet: "my-network"
  config.vm.network "private_network", ip: "192.168.33.24"
  config.vm.provision "shell", path: "scripts/startup.sh", args:"1", privileged: true, run: "always"
  config.vm.provision "shell", path: "scripts/zookeeper.sh", args:"1", privileged: false, run: "always"
  config.vm.provision "shell", path: "scripts/broker.sh", args:"1", privileged: false, run: "always"

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
    v.memory = "2048"
    v.cpus = 2
  end
end
