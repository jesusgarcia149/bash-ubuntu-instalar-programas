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

#13.-personalizacion
sudo mkdir $DIRECTORIO/13.-personalizacion
#zorin
#url: https://launchpad.net/%7Ezorinos/+archive/ubuntu/stable/+index?batch=75&direction=backwards&memo=150&start=75
sudo add-apt-repository ppa:zorinos/stable -y
sudo apt update
sudo apt-get install --download-only xfce4-zorinmenulite-plugin zorin-agent-geoclue2 zorin-desktop-themes zorin-os-default-settings zorin-os-wallpapers zorin-appearance zorin-exec-guard zorin-os-file-templates zorin-os-wallpapers-15 zorin-appearance-layouts-support zorin-exec-guard-app-db zorin-os-lite-core zorin-sound-theme zorin-appearance-layouts-xfce-core zorin-icon-themes zorin-os-lite-default-settings zorin-auto-theme zorin-os-artwork zorin-os-lite-desktop -y
sudo mkdir $DIRECTORIO/13.-personalizacion/zorin
sudo cp /var/cache/apt/archives/* $DIRECTORIO/13.-personalizacion/zorin
sudo apt-get clean