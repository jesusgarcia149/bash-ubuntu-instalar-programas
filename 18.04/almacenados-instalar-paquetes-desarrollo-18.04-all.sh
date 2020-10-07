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

#15.-especializacion
cd 15.-especializacion
cd 2.-desarrollo
cd brackets
sudo dpkg -i *.deb
cd ../
cd ../
cd ../
