# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|


  config.vm.box = "trusty64"

  config.vm.provision :puppet do |puppet|
      puppet.module_path = ["modules", "extmodules"]
      puppet.options = ["--verbose", "--debug"]
  end

 # config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8080, host: 5080
 # config.vm.network "forwarded_port", guest: 25, host: 2525


end
