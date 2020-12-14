#! /bin/bash

#remover archivo lock
#sudo rm /var/cache/apt/archives/lock

#actualizamos repositorios
sudo apt update
sudo apt install wget

#nes
sudo apt-get install nestopia -y

#sg
sudo add-apt-repository ppa:neon1ks/bionic -y
sudo apt-get update
sudo apt-get install kega-fusion -y

#snes
sudo apt-get install zsnes -y

#gba
sudo apt-get install mednafen -y

#n64
sudo apt-get install mupen64plus-qt -y

#nds
sudo apt-get install desmume -y

#gc
sudo apt-get install dolphin-emu -y

#psp
sudo add-apt-repository ppa:xuzhen666/ppsspp -y
sudo apt update
sudo apt-get install ppsspp -y
