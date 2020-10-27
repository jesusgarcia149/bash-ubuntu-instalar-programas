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

#nes
sudo cd 1.-nes
sudo dpkg -i *.deb
cd ../

#snes
sudo cd 2.-snes
sudo dpkg -i *.deb
cd ../

#sg
sudo cd 3.-sg
sudo dpkg -i *.deb
cd ../

#gba
sudo cd 4.-gba
sudo dpkg -i *.deb
cd ../

#n64
sudo cd 5.-n64
sudo dpkg -i *.deb
cd ../

#nds
sudo cd 6.-nds
sudo dpkg -i *.deb
cd ../

#gc
sudo cd 7.-gc
sudo dpkg -i *.deb
cd ../

#psp
sudo cd 8.-psp
sudo dpkg -i *.deb
cd ../