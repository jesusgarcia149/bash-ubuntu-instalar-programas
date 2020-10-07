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

#brackets
sudo add-apt-repository ppa:webupd8team/brackets -y
sudo apt-get update
sudo apt-get install --download-only brackets -y
sudo mkdir $DIRECTORIO/15.-especializacion/2.-desarrollo/brackets
sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/2.-desarrollo/brackets
sudo apt-get clean
