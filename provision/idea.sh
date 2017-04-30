#!/bin/sh
sudo touch /etc/sysctl.conf
echo 'fs.inotify.max_user_watches = 524288' | sudo tee -a /etc/sysctl.conf
if [ ! -f /vagrant/share/ideaIC-2017.1.2-no-jdk.tar.gz ]; then
  echo 'Downloading IntelliJ IDEA Community Edition'
  curl -fsSL --output /vagrant/share/ideaIC-2017.1.2-no-jdk.tar.gz https://download.jetbrains.com/idea/ideaIC-2017.1.2-no-jdk.tar.gz
fi
sudo tar -zxf /vagrant/share/ideaIC-2017.1.2-no-jdk.tar.gz --directory /opt
mkdir -p $HOME/bin
ln -s /opt/idea-IC-171.4249.39/bin/idea.sh $HOME/bin/idea.sh
