# vagrant-xfce4-ubuntu

Vagrant-based development environment using [Ubuntu](https://xubuntu.org/), with GUI (i.e., not headless). The Xfce Desktop Environment is used instead of the default Unity for performance reasons.

The Vagrant base box is the official Ubuntu 16.04 (Xenial Xerus) 64-bit box [available from Hashicorp Atlas](https://atlas.hashicorp.com/ubuntu/boxes/xenial64).

## Installation

Prerequisites:

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads). This has been tested with version 5.1.20
* [Vagrant](https://vagrantup.com/downloads.html). This has been tested using version 1.9.4

Clone this repository, then from the repository folder run this command:

    vagrant up && vagrant reload

The `ubuntu` user password is `ubuntu`.

## Notes

* Add your local customisation to `provision/local.sh`.
* Edit `provision/nodejs.sh` to select your NodeJS version.
* [nvm](https://github.com/creationix/nvm) is also installed, so it provides another mechanism to switch to other NodeJS versions.
* The Vagrantfile copies your private key to the VM so you can access Github et al. via SSH. It assumes the private key file can be found in `~/.ssh/id_rsa` on the host machine.
* You can also SSH to the VM as user `ubuntu`, using `vagrant ssh`
