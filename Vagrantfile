VAGRANTFILE_API_VERSION = "2"

# ---- Configuration variables ----

GUI               = false # Enable/Disable GUI
RAM               = 512   # Default memory size in MB

# Network configuration
BOX               = 'debian/jessie64'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = BOX

  config.vm.guest = :debian

  config.vm.provider "virtualbox" do |vbox|
    vbox.gui    = GUI
    vbox.memory = RAM
  end

  config.vm.network "forwarded_port", guest: 5000, host: 8001

  config.vm.provision "shell", path: "install-net-core.sh"
 
end

