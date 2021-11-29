#! /bin/bash

#cambiar al directorio home
cd

#actualizar repositorios
sudo apt update

#intercambiar archivos de Android al PC
sudo apt install kdeconnect -y

#wine
wget -nv https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-add-repository 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./' -y
sudo apt-get update
sudo apt install --install-recommends winehq-stable -y

#winetricks
sudo apt install winetricks -y

#playonlinux
sudo apt install playonlinux -y

#lutris
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt update
sudo apt install lutris -y

#steam
sudo apt install steam -y
