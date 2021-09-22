require_relative '.vagrant_plugins/key_authorization'

Vagrant.configure('2') do |config|

  ## VM Configuration
  ##
  CENTOS7_BOX_NAME = 'generic/centos7'
  CENTOS7_CPU = 4
  CENTOS7_FQDN = 'centos7.vagrant.ansible'
  CENTOS7_MEMORY = 4096

  CENTOS8_BOX_NAME = 'generic/centos8'
  CENTOS8_CPU = 4
  CENTOS8_FQDN = 'centos8.vagrant.ansible'
  CENTOS8_MEMORY = 4096

  UBUNTU1804_BOX_IMAGE = 'generic/ubuntu1804'
  UBUNTU1804_CPU = 4
  UBUNTU1804_FQDN = 'ubuntu1804.vagrant.ansible'
  UBUNTU1804_MEMORY = 4096

  UBUNTU2004_BOX_IMAGE = 'generic/ubuntu2004'
  UBUNTU2004_CPU = 4
  UBUNTU2004_FQDN = 'ubuntu2004.vagrant.ansible'
  UBUNTU2004_MEMORY = 4096


  ## Vagrant Configuration
  ##
  config.vm.provider "libvirt"

  authorize_key_for_root config, '~/.ssh/id_rsa.pub'
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = false
  config.vagrant.plugins = [
    'vagrant-hostmanager',
    'vagrant-libvirt',
  ]


  ## CentOS 7
  ##
  config.vm.define "#{CENTOS7_FQDN}" do |host|
    host.vm.box = CENTOS7_BOX_NAME
    host.vm.network 'private_network', type: 'dhcp'
    host.vm.hostname = "#{CENTOS7_FQDN}"
    host.vm.provider :libvirt do |vm|
      vm.cpus = CENTOS7_CPU
      vm.memory = CENTOS7_MEMORY
    end
    host.vm.provision "shell",
      inline: "yum upgrade -y"
  end


  ## CentOS 8
  config.vm.define "#{CENTOS8_FQDN}" do |host|
    host.vm.box = CENTOS8_BOX_NAME
    host.vm.network 'private_network', type: 'dhcp'
    host.vm.hostname = "#{CENTOS8_FQDN}"
    host.vm.provider :libvirt do |vm|
      vm.cpus = CENTOS8_CPU
      vm.memory = CENTOS8_MEMORY
    end
    host.vm.provision "shell",
      inline: "yum upgrade -y"
  end


  ## Ubuntu 18.04
  ##
  config.vm.define "#{UBUNTU1804_FQDN}" do |host|
    host.vm.box = UBUNTU1804_BOX_IMAGE
    host.vm.network 'private_network', type: 'dhcp'
    host.vm.hostname = "#{UBUNTU1804_FQDN}"
    host.vm.provider :libvirt do |vm|
      vm.cpus = UBUNTU1804_CPU
      vm.memory = UBUNTU1804_MEMORY
    end
    host.vm.provision "shell",
      inline: "apt update && DEBIAN_FRONTEND=noninteractive apt dist-upgrade -y"
  end


  ## Ubuntu 20.04
  ##
  config.vm.define "#{UBUNTU2004_FQDN}" do |host|
    host.vm.box = UBUNTU2004_BOX_IMAGE
    host.vm.network 'private_network', type: 'dhcp'
    host.vm.hostname = "#{UBUNTU2004_FQDN}"
    host.vm.provider :libvirt do |vm|
      vm.cpus = UBUNTU2004_CPU
      vm.memory = UBUNTU2004_MEMORY
    end
    host.vm.provision "shell",
      inline: "apt update && DEBIAN_FRONTEND=noninteractive apt dist-upgrade -y"
  end

end
