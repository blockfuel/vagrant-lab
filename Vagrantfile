# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "lab"
  config.vm.network "forwarded_port", guest: 3000, host: 3000, id: "reactapp"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "vagrant-lab"
    vb.memory = "1024"
  end
  config.vm.provision "shell", path: "provision.sh"
  config.vm.synced_folder "../_share", "/_share"
end
