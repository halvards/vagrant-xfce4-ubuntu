#!/bin/sh
# sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install lsb-release
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
echo "deb https://deb.nodesource.com/node_7.x $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/node_7.list
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install nodejs
echo "export PATH=\$PATH:node_modules/.bin" >> /home/$(whoami)/.bashrc
