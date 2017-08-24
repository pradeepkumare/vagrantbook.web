# -*- mode: ruby -*-
# vi: set ft=ruby :

$updateLocale=<<-UPDLOCALE

 echo "updating locale"
  echo 'LANG="en_US.UTF-8"' > /etc/locale.conf

UPDLOCALE

Vagrant.configure("2") do |config|
  config.vm.box = "centos-7.0-x86_64"
  #config.vm.box = "centos/7"
  config.vm.hostname = "anisble.pradeep.devops"
  config.vm.network "private_network", ip: "192.168.95.100"
  #config.vm.network "public_network" , ip: "192.168.95.180"
  #config.vm.network "forwarded_port", guest: 80, host: 80
  #config.vm.network "forwarded_port", guest: 8443, host: 8443
end
  config.vm.provider "virtualbox" do |v|
    v.name = "pradeep_ansible_server_centos7"
    v.memory = 1048
    v.cpus = 1
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
	v.customize ["modifyvm", :id, "--groups", "/pradeep-puppet-devops"]
    v.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]
  end

  config.vm.provision :hosts do |provisioner|
    provisioner.add_host '192.168.95.151', ['agent-1.pradeep.devops', 'vm-1']
    provisioner.add_host '192.168.95.152', ['agent-2.pradeep.devops', 'vm-2']
    provisioner.add_host '192.168.95.153', ['agent-3.pradeep.devops', 'vm-3']
    provisioner.add_host '192.168.95.190', ['checkmk.pradeep.devops', 'checkmk']
  end
#
#  config.vm.provision "file", source: "../../../../config", destination: "devops"
#  config.vm.provision "shell", inline: "/bin/systemctl stop firewalld && /bin/systemctl disable firewalld"
#  config.vm.provision "shell", path: "../ansible-provision.sh"

#end
