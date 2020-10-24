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

#13.-especializacion
cd 13.-personalizacion
#zorin
#cd zorin
#sudo dpkg -i *.deb
#cd ../
#arc-theme-papirus-icon-theme
cd arc-theme-papirus-icon-theme
sudo dpkg -i *.deb
cd ../
#flat-remix
cd flat-remix
sudo dpkg -i *.deb
cd ../
#mint
cd mint
sudo dpkg -i *.deb
cd ../
#adapta-gtk-theme
cd adapta-gtk-theme
sudo dpkg -i *.deb
cd ../
#yaru
cd yaru
sudo dpkg -i *.deb
cd ../
#ubuntu-wallpapers-bionic
cd wallpapers-ubuntu-wallpapers-bionic
sudo dpkg -i *.deb
cd ../
#salir
cd ../
