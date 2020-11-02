#! /bin/bash

#actualizar repositorios
sudo apt update

#produccion-audiovisual
sudo apt install audacity inkscape blender kazam vokoscreen openshot kdenlive -y
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder -y
sudo apt update
sudo apt install simplescreenrecorder -y

#gimp
sudo apt-get remove gimp -y
sudo apt-get autoremove --purge -y
sudo add-apt-repository ppa:alex-p/gimp -y
sudo apt-get update
sudo apt-get install gimp-devel -y

#ffmulticonverter
sudo add-apt-repository ppa:noobslab/apps -y
sudo apt update
sudo apt install ffmulticonverter -y

#corregir dependencias
sudo apt install -f -y

#actualizar programas
sudo apt-get upgrade -y
