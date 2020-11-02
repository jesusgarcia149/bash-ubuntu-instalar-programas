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

#1.-navegadores
cd 1.-navegadores
cd chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb
cd ../
cd ../

#2.-documentos
cd 2.-documentos
cd gscan2pdf
sudo dpkg -i *.deb
cd ../
cd libreoffice
sudo dpkg -i *.deb
cd ../
cd ocrfeeder
sudo dpkg -i *.deb
cd ../
cd ../

#3.-multimedia
cd 3.-multimedia
cd clementine
sudo dpkg -i *.deb
cd ../
cd vlc
sudo dpkg -i *.deb
cd ../
cd ../

#4.-compresion
cd 4.-compresion
cd unrar
sudo dpkg -i *.deb
cd ../
cd ../

#6.-utilidades
cd 6.-utilidades
cd gparted
sudo dpkg -i *.deb
cd ../
cd htop
sudo dpkg -i *.deb
cd ../
cd screenfetch
sudo dpkg -i *.deb
cd ../
cd ../

#7.-descargas
cd 7.-descargas
cd megasync
sudo dpkg -i *.deb
cd ../
cd qbittorrent
sudo dpkg -i *.deb
cd ../
cd xtreme-download-manager
sudo sh install.sh
cd ../
cd ../

#12.-redes
cd 12.-redes
cd nast
sudo dpkg -i *.deb
cd ../
cd tor
sudo dpkg -i *.deb
cd ../
cd ../

#14.-emuladores-virtualizacion
#cd 14.-emuladores-virtualizacion
#sudo chmod 777 ./VirtualBox-5.2.34-133893-Linux_amd64.run
#sudo ./VirtualBox-5.2.34-133893-Linux_amd64.run
#cd ../
#cd ../
