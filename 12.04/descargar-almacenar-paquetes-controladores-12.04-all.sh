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

#10.-controladores
#sudo mkdir $DIRECTORIO/10.-controladores/
#sudo mkdir $DIRECTORIO/10.-controladores/nvidia
#sudo mkdir $DIRECTORIO/10.-controladores/nvidia/gforce-405
#nvidia-340
#sudo mkdir $DIRECTORIO/10.-controladores/nvidia/gforce-405/nvidia-340
#sudo apt-get install --download-only nvidia-340 -y
#sudo cp /var/cache/apt/archives/* $DIRECTORIO/10.-controladores/nvidia/gforce-405/nvidia-340
#sudo apt-get clean
#nvidia-opencl-icd-340
#sudo mkdir $DIRECTORIO/10.-controladores/nvidia/gforce-405/nvidia-opencl-icd-340
#sudo apt-get install --download-only nvidia-opencl-icd-340 -y
#sudo cp /var/cache/apt/archives/* $DIRECTORIO/10.-controladores/nvidia/gforce-405/nvidia-opencl-icd-340
#sudo apt-get clean
