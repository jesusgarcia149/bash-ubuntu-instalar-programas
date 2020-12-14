#! /bin/bash

#remover archivo lock
#sudo rm /var/cache/apt/archives/lock

#actualizamos repositorios
sudo apt update

#11.-arranques-reparacion
#boot-repair
sudo add-apt-repository ppa:yannubuntu/boot-repair -y
sudo apt update
sudo apt install boot-repair -y
#woeusb
sudo wget http://mirrors.kernel.org/ubuntu/pool/universe/w/wxwidgets3.0/libwxgtk3.0-0v5_3.0.4+dfsg-3_amd64.deb
sudo dpkg -i libwxgtk*_amd64.deb
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt update
sudo apt install woeusb -y
