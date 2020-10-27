#! /bin/bash

#cambiar al directorio home
cd

#actualizar repositorios
sudo apt-get update

#wget
sudo apt-get install wget -y

#navegadores
sudo apt-get-get install firefox -y

#documentos
#gscan2pdf
sudo apt-get install gscan2pdf -y
#ocrfeeder
sudo apt-get install ocrfeeder tesseract-ocr -y
#libreoffice
#sudo apt-get-get remove libreoffice* -y
#sudo apt-get autoremove --purge -y
#sudo add-apt-repository ppa:libreoffice/libreoffice-6-4 -y
#sudo apt-get update -y
sudo apt-get install libreoffice -y
#libreoffice en español
sudo apt-get install libreoffice-l10n-es -y

#multimedia
sudo apt-get install clementine vlc -y

#compresion
sudo apt-get install unrar -y

#utilidades
sudo apt-get install gparted htop -y
sudo add-apt-repository ppa:dawidd0811/neofetch -y
sudo apt-get install neofetch -y

#descargas
sudo apt-get install qbittorrent -y
#instalar megasync
sudo wget https://mega.nz/linux/MEGAsync/xUbuntu_12.04/i386/megasync_4.0.2+1.1_i386.deb
sudo dpkg -i megasync_4.0.2+1.1_i386.deb
sudo apt-get install -f -y
#instalar xtreme-download-manager
sudo wget https://netactuate.dl.sourceforge.net/project/xdman/xdm-2018-x86.tar.xz
tar -xvf xdm-2018-x86.tar.xz
sudo ./install.sh
cd

#redes
sudo apt-get install nast nmap -y
#sudo nast -m eth0 (si estamos conectados por cable directos al router)
#sudo nast -m wlan0 (si nos conectamos por WI-FI a la red)

#corregir dependencias
sudo apt-get install -f -y

#actualizar programas
sudo apt-get upgrade -y
