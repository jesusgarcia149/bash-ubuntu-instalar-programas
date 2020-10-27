#! /bin/bash

#actualizar repositorios
sudo apt update

#produccion-audiovisual
sudo apt-get install audacity inkscape blender kazam openshot kdenlive -y
#sudo apt-get install  simplescreenrecorder -y
#sudo apt-get install vokoscreen  -y

#gimp
#sudo apt-get remove gimp -y
#sudo apt-get autoremove --purge -y
#sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
#sudo apt-get update
sudo apt-get install gimp -y

#ffmulticonverter
sudo add-apt-repository ppa:noobslab/apps -y
sudo apt-get update
sudo apt-get install ffmulticonverter -y

#corregir dependencias
sudo apt-get install -f -y

#actualizar programas
sudo apt-get upgrade -y
