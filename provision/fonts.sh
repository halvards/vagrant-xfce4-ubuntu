#!/bin/sh
# sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install unzip
sudo mkdir -p /usr/local/share/fonts/truetype/open-sans
curl -fsSL -o /tmp/open-sans.zip https://www.fontsquirrel.com/fonts/download/open-sans
sudo unzip -q /tmp/open-sans.zip -d /usr/local/share/fonts/truetype/open-sans
sudo rm -f /tmp/open-sans.zip
