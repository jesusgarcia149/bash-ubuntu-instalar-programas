#! /bin/bash

#remover archivo lock
#sudo rm /var/cache/apt/archives/lock

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

#actualizamos repositorios
sudo apt update

#15.-especializacion
sudo mkdir $DIRECTORIO/15.-especializacion
#2./desarrollo
sudo mkdir $DIRECTORIO/15.-especializacion/2.-desarrollo

#sublime-text
#sudo apt install wget -y
#sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#sudo apt-get install apt-transport-https -y
#echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#sudo apt-get update
#sudo apt-get install sublime-text --download-only -y
#sudo mkdir $DIRECTORIO/15.-especializacion/2.-desarrollo/sublime-text
#sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/2.-desarrollo/sublime-text
#sudo apt-get clean
