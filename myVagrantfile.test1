# -*- mode: ruby -*-
# vi: set ft=ruby :
#VAGRANTFILE_API_VERSION = "2"
#Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
#   config.vm.define "web", primary: true do |web|
#    web.vm.box ="puppetlabs/ubuntu-14.04-32-nocm"
#    web.vm.network "forwarded_port", guest:80, host:8888
#    web.vm.provision "shell", inline: "apt-get install -y nginx"
#   end
#end

# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 config.vm.define "web", primary: true do |web|
  web.vm.box ="puppetlabs/ubuntu-14.04-32-nocm"
  web.vm.network "forwarded_port", guest:80, host:8888, auto_correct:true
  web.vm.synced_folder "vagrantsite/", "/opt/vagrantsite"
  web.vm.provision "shell", inline: "apt-get update && apt-get install -y nginx ; ln -s /opt/vagrantsite /usr/share/nginx/html/vagrantsite"
  web.vm.provider "virtualbox" do |vbox|
    vbox.memory = 2048
    vbox.cpus = 2
  end
 end
end
