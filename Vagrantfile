VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 config.vm.define "web", primary: true do |web|
  web.vm.box ="centos/7"
  web.vm.hostname= "Docker"
  web.vm.network "forwarded_port", guest:80, host:8888, auto_correct:true
  web.vm.synced_folder "vagrantsite/", "/opt/vagrantsite"
  web.vm.provision "shell", inline: "yum install docker -y ; "
  #web.vm.provider "virtualbox" do |vbox|
  #  vbox.memory = 2048
  #  vbox.cpus = 2
  #end
 end
end
