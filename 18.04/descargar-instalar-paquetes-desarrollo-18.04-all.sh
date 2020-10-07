#! /bin/bash

#remover archivo lock
#sudo rm /var/cache/apt/archives/lock

#actualizamos repositorios
sudo apt update

#brackets
sudo add-apt-repository ppa:webupd8team/brackets -y
sudo apt-get update
sudo apt-get install brackets -y

#npm nodejs git
sudo apt install npm nodejs git