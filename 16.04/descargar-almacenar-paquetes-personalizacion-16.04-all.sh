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

#13.-personalizacion
sudo mkdir $DIRECTORIO/13.-personalizacion
#zorin
#url: https://launchpad.net/%7Ezorinos/+archive/ubuntu/stable/+index?batch=75&direction=backwards&memo=150&start=75
#sudo add-apt-repository ppa:zorinos/stable -y
#sudo apt update
#sudo apt-get install --download-only xfce4-zorinmenulite-plugin zorin-agent-geoclue2 zorin-desktop-themes zorin-os-default-settings zorin-os-wallpapers zorin-appearance zorin-exec-guard zorin-os-file-templates zorin-os-wallpapers-15 zorin-appearance-layouts-support zorin-exec-guard-app-db zorin-os-lite-core zorin-sound-theme zorin-appearance-layouts-xfce-core zorin-icon-themes zorin-os-lite-default-settings zorin-auto-theme zorin-os-artwork zorin-os-lite-desktop thunar -y
#sudo mkdir $DIRECTORIO/13.-personalizacion/zorin
#sudo cp /var/cache/apt/archives/* $DIRECTORIO/13.-personalizacion/zorin
#sudo apt-get clean

#arc-theme papirus-icons-theme
sudo add-apt-repository ppa:fossfreedom/arc-gtk-theme-daily -y
sudo add-apt-repository ppa:papirus/papirus -y
sudo apt update
sudo apt-get install --download-only arc-theme papirus-icon-theme -y
sudo mkdir $DIRECTORIO/13.-personalizacion/arc-theme-papirus-icon-theme
sudo cp /var/cache/apt/archives/* $DIRECTORIO/13.-personalizacion/arc-theme-papirus-icon-theme
sudo apt-get clean

#flat-remix-theme
#sudo add-apt-repository ppa:daniruiz/flat-remix -y 
#sudo apt update
#sudo apt-get install --download-only flat-remix flat-remix-gtk -y
#sudo mkdir $DIRECTORIO/13.-personalizacion/flat-remix
#sudo cp /var/cache/apt/archives/* $DIRECTORIO/13.-personalizacion/flat-remix
#sudo apt-get clean

#mint
#sudo wget http://packages.linuxmint.com/pool/main/m/mint-x-icons/mint-x-icons_1.5.2_all.deb
#sudo wget http://packages.linuxmint.com/pool/main/m/mint-y-icons/mint-y-icons_1.3.4_all.deb
#sudo wget http://packages.linuxmint.com/pool/main/m/mint-themes/mint-themes_1.8.2_all.deb
#sudo mkdir $DIRECTORIO/13.-personalizacion/mint
#sudo cp ./mint-x-icons_1.5.2_all.deb $DIRECTORIO/13.-personalizacion/mint
#sudo cp ./mint-y-icons_1.3.4_all.deb $DIRECTORIO/13.-personalizacion/mint
#sudo cp ./mint-themes_1.8.2_all.deb $DIRECTORIO/13.-personalizacion/mint

#adapta-gtk-theme
#sudo apt-add-repository ppa:tista/adapta -y 
#sudo apt update
#sudo apt-get install --download-only adapta-gtk-theme -y
#sudo mkdir $DIRECTORIO/13.-personalizacion/adapta-gtk-theme
#sudo cp /var/cache/apt/archives/* $DIRECTORIO/13.-personalizacion/adapta-gtk-theme
#sudo apt-get clean

#yaru
#sudo add-apt-repository ppa:communitheme/ppa -y
#sudo apt update
#sudo apt-get install --download-only yaru-theme-gnome-shell yaru-theme-icon yaru-theme-unity yaru-theme-gtk yaru-theme-sound -y
#sudo mkdir $DIRECTORIO/13.-personalizacion/yaru
#sudo cp /var/cache/apt/archives/* $DIRECTORIO/13.-personalizacion/yaru
#sudo apt-get clean

#ubuntu-wallpapers-bionic
#sudo apt-get install --download-only ubuntu-wallpapers-bionic -y
#sudo mkdir $DIRECTORIO/13.-personalizacion/wallpapers-ubuntu-wallpapers-bionic
#sudo cp /var/cache/apt/archives/* $DIRECTORIO/13.-personalizacion/wallpapers-ubuntu-wallpapers-bionic
#sudo apt-get clean