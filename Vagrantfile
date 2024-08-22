Vagrant.configure("2") do |config|
  config.vm.boot_timeout = 600  # Увеличиваем время ожидания до 10 минут
  
  # Настройка первой машины
  config.vm.define "ubuntu24-1" do |ubuntu|
    ubuntu.vm.box = "ubuntu/jammy64"
    ubuntu.vm.hostname = "ubuntu24-1"
    ubuntu.vm.network "private_network", ip: "172.30.19.116"
    
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.name = "ubuntu24_vm_1"
      vb.memory = "1024"
      vb.cpus = 2
    end
  end

  # Настройка второй машины
  config.vm.define "ubuntu24-2" do |ubuntu|
    ubuntu.vm.box = "ubuntu/jammy64"
    ubuntu.vm.hostname = "ubuntu24-2"
    ubuntu.vm.network "private_network", ip: "172.30.19.117"
    
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.name = "ubuntu24_vm_2"
      vb.memory = "1024"
      vb.cpus = 2
    end
  end
end
