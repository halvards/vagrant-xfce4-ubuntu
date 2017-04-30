#!/bin/sh
# sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod --groups docker --append $(whoami)
touch /home/$(whoami)/.bashrc
echo "alias whalehunt='docker rm -f \$(docker ps -aq)'" >> /home/$(whoami)/.bashrc
