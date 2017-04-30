#!/bin/sh
# sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install openjdk-8-jdk openjdk-8-source
touch /home/$(whoami)/.bashrc
echo "export JAVA_HOME=$(/bin/readlink -f /usr/bin/javac | sed 's:/bin/javac::')" >> /home/$(whoami)/.bashrc
