#! /bin/bash

#cambiar al directorio home
cd

#actualizar repositorios
sudo apt update

#wget
sudo apt install wget -y

#navegadores
sudo apt install firefox -y

#documentos
#gscan2pdf
sudo apt install gscan2pdf -y
#ocrfeeder
sudo apt install ocrfeeder tesseract-ocr -y
#libreoffice
sudo apt-get remove libreoffice* -y
sudo apt-get autoremove --purge -y
sudo add-apt-repository ppa:libreoffice/libreoffice-6-4 -y
sudo apt update -y
sudo apt install libreoffice -y
#libreoffice en español
sudo apt install libreoffice-l10n-es -y

#multimedia
sudo apt install clementine vlc gpaint -y
# Kodi v19.2 - Matrix
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo apt update
sudo apt install kodi -y

#compresion
sudo apt install unrar -y

#utilidades
sudo apt install gparted htop screenfetch qlipper -y

#descargas
sudo apt install qbittorrent -y
#instalar megasync
sudo wget https://mega.nz/linux/MEGAsync/xUbuntu_17.04/i386/megasync_4.2.5+1.1_i386.deb
sudo dpkg -i megasync_4.2.5+1.1_i386.deb
sudo apt install -f -y
#instalar xtreme-download-manager
sudo wget https://netactuate.dl.sourceforge.net/project/xdman/xdm-2018-x86.tar.xz
tar -xvf xdm-2018-x86.tar.xz
sudo ./install.sh
cd

#complementos
sudo apt-get install openjdk-8-jre openjfx -y

#redes
sudo apt install nast nmap -y
#sudo nast -m eth0 (si estamos conectados por cable directos al router)
#sudo nast -m wlan0 (si nos conectamos por WI-FI a la red)

#corregir dependencias
sudo apt install -f -y

#actualizar programas
sudo apt upgrade -y
