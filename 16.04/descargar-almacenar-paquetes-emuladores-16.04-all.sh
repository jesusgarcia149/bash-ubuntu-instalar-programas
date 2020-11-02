#! /bin/bash

#remover archivo lock
#sudo rm /var/cache/apt/archives/lock

#actualizamos repositorios
sudo apt update
sudo apt install wget

#definimos el directorio
archivo=./url.sh
#si no existe el archivo lo creamos
if [ ! -f "$archivo" ]; then
	read -p "Dime direccion donde se guardaran los paquetes: " DIRECTORIO
	touch "$archivo"
	chmod 777 "$archivo"
	echo $DIRECTORIO > $archivo
fi
DIRECTORIO=$(cat $archivo)

#creamos el directorio

#nes
sudo apt-get install --download-only nestopia -y
sudo mkdir $DIRECTORIO/1.-nes
sudo cp /var/cache/apt/archives/* $DIRECTORIO/1.-nes
sudo apt-get clean

#sg
sudo add-apt-repository ppa:neon1ks/bionic -y
sudo apt-get update
sudo apt-get install --download-only kega-fusion -y
sudo mkdir $DIRECTORIO/3.-sg
sudo cp /var/cache/apt/archives/* $DIRECTORIO/3.-sg
sudo apt-get clean

#snes
sudo apt-get install --download-only zsnes -y
sudo mkdir $DIRECTORIO/2.-snes
sudo cp /var/cache/apt/archives/* $DIRECTORIO/2.-snes
sudo apt-get clean

#gba
sudo apt-get install --download-only mednafen -y
sudo mkdir $DIRECTORIO/4.-gba
sudo cp /var/cache/apt/archives/* $DIRECTORIO/4.-gba
sudo apt-get clean

#n64
sudo apt-get install --download-only mupen64plus-qt -y
sudo mkdir $DIRECTORIO/5.-n64
sudo cp /var/cache/apt/archives/* $DIRECTORIO/5.-n64
sudo apt-get clean

#nds
sudo apt-get install --download-only desmume -y
sudo mkdir $DIRECTORIO/6.-nds
sudo cp /var/cache/apt/archives/* $DIRECTORIO/6.-nds
sudo apt-get clean

#gc
sudo apt-get install --download-only dolphin-emu -y
sudo mkdir $DIRECTORIO/7.-gc
sudo cp /var/cache/apt/archives/* $DIRECTORIO/7.-gc
sudo apt-get clean

#psp
sudo add-apt-repository ppa:ppsspp/stable -y
sudo apt update
sudo apt-get install --download-only ppsspp -y
sudo mkdir $DIRECTORIO/8.-psp
sudo cp /var/cache/apt/archives/* $DIRECTORIO/8.-psp
sudo apt-get clean