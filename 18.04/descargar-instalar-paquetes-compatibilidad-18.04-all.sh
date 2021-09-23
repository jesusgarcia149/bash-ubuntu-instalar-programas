#! /bin/bash

#cambiar al directorio home
cd

#actualizar repositorios
sudo apt update

#intercambiar archivos de Android al PC
sudo apt install kdeconnect -y

#wine
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
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






