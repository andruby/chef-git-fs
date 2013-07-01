# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.hostname = "chef-git-fs"

  # Standard Ubuntu 12.04.2 base box
  config.vm.box = "ubuntu-12.04.2-amd64-chef-11-omnibus"
  config.vm.box_url = "http://grahamc.com/vagrant/ubuntu-12.04-omnibus-chef.box"

  # Enabling the Berkshelf plugin. To enable this globally, add this configuration
  # option to your ~/.vagrant.d/Vagrantfile file
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.json = {}
    chef.add_recipe "git"
    chef.add_recipe "git-fs::default"
  end
end
