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

#1.-navegadores
sudo mkdir $DIRECTORIO/1.-navegadores
#chrome
sudo mkdir $DIRECTORIO/1.-navegadores/chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo cp google-chrome-stable_current_amd64.deb $DIRECTORIO/1.-navegadores/chrome

#2.-documentos
sudo mkdir $DIRECTORIO/2.-documentos
#gscan2pdf
sudo apt-get install --download-only gscan2pdf -y
sudo mkdir $DIRECTORIO/2.-documentos/gscan2pdf
sudo cp /var/cache/apt/archives/* $DIRECTORIO/2.-documentos/gscan2pdf
sudo apt-get clean
#ocrfeeder
sudo apt-get install --download-only ocrfeeder tesseract-ocr -y
sudo mkdir $DIRECTORIO/2.-documentos/ocrfeeder
sudo cp /var/cache/apt/archives/* $DIRECTORIO/2.-documentos/ocrfeeder
sudo apt-get clean
#libreoffice
sudo apt-get remove libreoffice* -y
sudo apt-get autoremove --purge -y
sudo add-apt-repository ppa:libreoffice/libreoffice-6-4 -y
sudo apt update -y
sudo apt install --download-only libreoffice libreoffice-l10n-es -y
sudo mkdir $DIRECTORIO/2.-documentos/libreoffice
sudo cp /var/cache/apt/archives/* $DIRECTORIO/2.-documentos/libreoffice
sudo apt-get clean

#3.-multimedia
sudo mkdir $DIRECTORIO/3.-multimedia
#clementine
sudo apt-get install --download-only clementine -y
sudo mkdir $DIRECTORIO/3.-multimedia/clementine
sudo cp /var/cache/apt/archives/* $DIRECTORIO/3.-multimedia/clementine
sudo apt-get clean
#vlc
sudo apt-get install --download-only vlc -y
sudo mkdir $DIRECTORIO/3.-multimedia/vlc
sudo cp /var/cache/apt/archives/* $DIRECTORIO/3.-multimedia/vlc
sudo apt-get clean
#gpaint
sudo apt-get install --download-only gpaint -y
sudo mkdir $DIRECTORIO/3.-multimedia/gpaint
sudo cp /var/cache/apt/archives/* $DIRECTORIO/3.-multimedia/gpaint
sudo apt-get clean

#4.-compresion
sudo mkdir $DIRECTORIO/4.-compresion
#unrar
sudo apt-get install --download-only unrar -y
sudo mkdir $DIRECTORIO/4.-compresion/unrar
sudo cp /var/cache/apt/archives/* $DIRECTORIO/4.-compresion/unrar
sudo apt-get clean

#6.-utilidades
sudo mkdir $DIRECTORIO/6.-utilidades
#gparted
sudo apt-get remove gparted -y
sudo apt-get autoremove --purge -y
sudo apt-get install --download-only gparted -y
sudo mkdir $DIRECTORIO/6.-utilidades/gparted
sudo cp /var/cache/apt/archives/* $DIRECTORIO/6.-utilidades/gparted
sudo apt-get clean
#htop
sudo apt-get remove htop -y
sudo apt-get autoremove --purge -y
sudo apt-get install --download-only htop -y
sudo mkdir $DIRECTORIO/6.-utilidades/htop
sudo cp /var/cache/apt/archives/* $DIRECTORIO/6.-utilidades/htop
sudo apt-get clean
#screenfetch
sudo apt-get install --download-only screenfetch -y
sudo mkdir $DIRECTORIO/6.-utilidades/screenfetch
sudo cp /var/cache/apt/archives/* $DIRECTORIO/6.-utilidades/screenfetch
sudo apt-get clean
#qlipper
sudo apt-get install --download-only qlipper -y
sudo mkdir $DIRECTORIO/6.-utilidades/qlipper
sudo cp /var/cache/apt/archives/* $DIRECTORIO/6.-utilidades/qlipper
sudo apt-get clean

#7.-descargas
sudo mkdir $DIRECTORIO/7.-descargas
#qbittorrent
sudo apt-get install --download-only qbittorrent -y
sudo mkdir $DIRECTORIO/7.-descargas/qbittorrent
sudo cp /var/cache/apt/archives/* $DIRECTORIO/7.-descargas/qbittorrent
sudo apt-get clean
#megasync
sudo wget https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync_4.3.3-4.1_amd64.deb
sudo mkdir $DIRECTORIO/7.-descargas/megasync
sudo cp megasync_4.3.3-4.1_amd64.deb $DIRECTORIO/7.-descargas/megasync
sudo apt-get clean
#xtreme-download-manager
sudo wget https://github.com/subhra74/xdm/releases/download/7.2.10/xdm-setup-7.2.10.tar.xz
tar -xvf xdm-setup-7.2.10.tar.xz
sudo mkdir $DIRECTORIO/7.-descargas/xtreme-download-manager
sudo cp install.sh $DIRECTORIO/7.-descargas/xtreme-download-manager
sudo apt-get clean

#9.-complementos
sudo mkdir $DIRECTORIO/9.-complementos
#openjdk-8-jre
sudo apt-get install --download-only openjdk-8-jre -y
sudo mkdir $DIRECTORIO/9.-complementos/openjdk-8-jre
sudo cp /var/cache/apt/archives/* $DIRECTORIO/9.-complementos/openjdk-8-jre
sudo apt-get clean
#openjfx
sudo apt-get install --download-only openjfx -y
sudo mkdir $DIRECTORIO/9.-complementos/openjfx
sudo cp /var/cache/apt/archives/* $DIRECTORIO/9.-complementos/openjfx
sudo apt-get clean

#12.-redes
sudo mkdir $DIRECTORIO/12.-redes
#tor
sudo apt-get install --download-only tor -y
sudo mkdir $DIRECTORIO/12.-redes/tor
sudo cp /var/cache/apt/archives/* $DIRECTORIO/12.-redes/tor
sudo apt-get clean
#nast
sudo apt-get install --download-only nast nmap -y
sudo mkdir $DIRECTORIO/12.-redes/nast
sudo cp /var/cache/apt/archives/* $DIRECTORIO/12.-redes/nast
sudo apt-get clean
#sudo nast -m eth0 (si estamos conectados por cable directos al router)
#sudo nast -m wlan0 (si nos conectamos por WI-FI a la red)
