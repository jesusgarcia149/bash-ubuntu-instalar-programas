#! /bin/bash

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
cd $DIRECTORIO

#10.-controladores
cd 10.-controladores
cd nvidia
cd gforce-405
cd nvidia-340
sudo dpkg -i *.deb
cd ../
cd nvidia-opencl-icd-340
sudo dpkg -i *.deb
cd ../
cd ../
cd ../
cd ../
