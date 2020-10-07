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
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt update
sudo apt install woeusb -y