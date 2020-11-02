#! /bin/bash

#cambiar al directorio home
cd

#actualizar repositorios
sudo apt update

#wget
sudo apt install wget -y

#navegadores
sudo apt install firefox -y
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#documentos
#gscan2pdf
sudo apt install gscan2pdf -y
#ocrfeeder
sudo apt install ocrfeeder tesseract-ocr -y
#libreoffice
sudo apt-get remove libreoffice* -y
sudo apt-get autoremove --purge -y
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo apt update -y
sudo apt install libreoffice -y
#libreoffice en español
sudo apt install libreoffice-l10n-es -y

#multimedia
sudo apt install clementine vlc -y

#compresion
sudo apt install unrar -y

#utilidades
sudo apt install gparted htop screenfetch -y

#descargas
sudo apt install qbittorrent -y
#instalar megasync
sudo wget https://mega.nz/linux/MEGAsync/xUbuntu_16.04/amd64/megasync_4.3.5-3.1_amd64.deb
sudo dpkg -i megasync_4.3.5-3.1_amd64.deb
#instalar xtreme-download-manager
sudo wget https://github.com/subhra74/xdm/releases/download/7.2.10/xdm-setup-7.2.10.tar.xz
tar -xvf xdm-setup-7.2.10.tar.xz
cd xdm-setup-7.2.10
sudo ./install.sh
cd

#redes
sudo apt install tor -y
#nast
sudo apt install nast nmap -y
#sudo nast -m eth0 (si estamos conectados por cable directos al router)
#sudo nast -m wlan0 (si nos conectamos por WI-FI a la red)

#corregir dependencias
sudo apt install -f -y

#corregir dependencias
sudo apt install -f -y

#actualizar programas
sudo apt-get upgrade -y
