#!/bin/sh
# sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install vim #vim-gtk
touch /home/$(whoami)/.bashrc
echo "export EDITOR=vim" >> /home/$(whoami)/.bashrc
