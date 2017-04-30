#!/bin/sh
sudo apt-add-repository -y ppa:git-core/ppa
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install git
git config --global alias.serve 'daemon --verbose --export-all --base-path=.git --reuseaddr --strict-paths .git/'
git config --global alias.st status
git config --global color.ui auto
git config --global core.editor vim
git config --global credential.helper store
git config --global push.default simple
