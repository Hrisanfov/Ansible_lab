Vagrant.configure("2") do |config|

config.vm.provision "shell", inline: "echo Hello"
 
 config.vm.define "jenkins" do |jenkins|
   jenkins.vm.box = "sbeliakou/centos"
   jenkins.vm.hostname = "jenkins"
   jenkins.vm.network :private_network, ip: "192.168.56.100"
     end


 config.vm.define "nexus" do |nexus|
   nexus.vm.box = "sbeliakou/centos"
   nexus.vm.hostname = "nexus"
   nexus.vm.network :private_network, ip: "192.168.56.102"
     end

 config.vm.define "tomcat" do |tomcat|
   tomcat.vm.box = "sbeliakou/centos"
   tomcat.vm.hostname = "tomcat"
   tomcat.vm.network :private_network, ip: "192.168.56.103"
     end

 config.vm.define "sonar" do |sonar|
   jenkins.vm.box = "sbeliakou/centos"
   sonar.vm.hostname = "sonar"
   sonar.vm.network :private_network, ip: "192.168.56.101"
     end

end
