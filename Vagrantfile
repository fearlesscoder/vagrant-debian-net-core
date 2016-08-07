VAGRANTFILE_API_VERSION = "2"

# ---- Configuration variables ----

GUI               = false # Enable/Disable GUI
RAM               = 512   # Default memory size in MB

# Network configuration
DOMAIN            = ".home.local"
NETWORK           = "192.168.1."
NETMASK           = "255.255.255.0"

BOX               = 'rwserver/debian-8.3'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = BOX
  config.vm.box_url = "/nas/shared/boxes/debian-8.3.0-amd64_virtualbox.box"

  config.vm.guest = :debian

  config.vm.provider "virtualbox" do |vbox|
    vbox.gui    = GUI
    vbox.memory = RAM
  end

  config.vm.network "forwarded_port", guest: 8000, host: 8001

  config.vm.provision "shell", path: "install-net-core.sh"
 
end

