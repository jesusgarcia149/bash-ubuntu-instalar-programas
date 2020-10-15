#! /bin/bash

#remover archivo lock
#sudo rm /var/cache/apt/archives/lock

#actualizamos repositorios
sudo apt update

#10.-controladores
#nvidia
#gforce-405
sudo apt install nvidia-340 -y
sudo apt install nvidia-opencl-icd-340 -y
