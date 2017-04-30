# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/xenial64'

  config.vm.box_check_update = false

  config.vm.host_name = 'xfce4.ubuntu64.vagrantup.com'

  config.vm.network 'forwarded_port', guest: 22,   host: 2170, id: 'ssh', auto_correct: true

  # config.vm.synced_folder '../data', '/vagrant_data'

  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.name = 'xfce4-ubuntu'
    vb.memory = 4096
    vb.cpus = 1
    vb.customize ['modifyvm', :id, '--vram', '256']
    vb.customize ['modifyvm', :id, '--accelerate2dvideo', 'off']
    vb.customize ['modifyvm', :id, '--accelerate3d', 'on']
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
    # vb.customize ['setextradata', :id, 'GUI/HiDPI/UnscaledOutput', '1']
  end

  # Copy private key to VM for Git and other tools
  config.vm.provision 'file', source: "#{ENV['HOME']}/.ssh/id_rsa", destination: '~/.ssh/id_rsa'

  config.vm.provision 'shell', privileged: false, path: 'provision/base.sh', name: 'base.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/deb.sh', name: 'deb.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/git.sh', name: 'git.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/xfce4.sh', name: 'xfce4.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/apps.sh', name: 'apps.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/google-chrome.sh', name: 'google-chrome.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/java.sh', name: 'java.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/idea.sh', name: 'idea.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/nodejs.sh', name: 'nodejs.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/nvm.sh', name: 'nvm.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/atom.sh', name: 'atom.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/vim.sh', name: 'vim.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/fonts.sh', name: 'fonts.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/docker.sh', name: 'docker.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/aws.sh', name: 'aws.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/local.sh', name: 'local.sh'
end
