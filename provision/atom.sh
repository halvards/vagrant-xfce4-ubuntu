#!/bin/sh
sudo apt-add-repository -y ppa:webupd8team/atom
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install atom
apm config set strict-ssl false
# Generic packages
apm install atom-beautify
apm install editorconfig
apm install merge-conflicts
# JavaScript  packages
apm install es6-javascript
apm install language-javascript-jsx
# Web development packages
apm install emmet
apm install pigments
# Docker packages
apm install language-docker
