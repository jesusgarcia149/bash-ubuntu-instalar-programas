#! /bin/bash

#actualizar repositorios
sudo apt update

#produccion-audiovisual
sudo apt install audacity inkscape blender simplescreenrecorder kazam vokoscreen openshot kdenlive -y

#gimp
sudo apt-get remove gimp -y
sudo apt-get autoremove --purge -y
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo apt-get update
sudo apt-get install gimp -y

#ffmulticonverter
sudo add-apt-repository ppa:noobslab/apps -y
sudo apt update
sudo apt install ffmulticonverter -y

#corregir dependencias
sudo apt install -f -y

#actualizar programas
sudo apt-get upgrade -y
