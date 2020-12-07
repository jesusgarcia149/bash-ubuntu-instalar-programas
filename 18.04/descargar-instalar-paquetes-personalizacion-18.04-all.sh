#! /bin/bash

#zorin-theme
#url: https://launchpad.net/%7Ezorinos/+archive/ubuntu/stable/+index?batch=75&direction=backwards&memo=150&start=75
#sudo add-apt-repository ppa:zorinos/stable -y
#sudo apt update
#sudo apt install xfce4-zorinmenulite-plugin zorin-agent-geoclue2 zorin-desktop-themes zorin-os-default-settings zorin-os-wallpapers zorin-appearance zorin-exec-guard zorin-os-file-templates zorin-os-wallpapers-15 zorin-appearance-layouts-support zorin-exec-guard-app-db zorin-os-lite-core zorin-sound-theme zorin-appearance-layouts-xfce-core zorin-icon-themes zorin-os-lite-default-settings zorin-auto-theme zorin-os-artwork zorin-os-lite-desktop thunar -y

#plank
sudo apt-get install plank -y

#arc-theme papirus-icons-theme
sudo apt install arc-theme papirus-icon-theme -y

#flat-remix-theme
sudo add-apt-repository ppa:daniruiz/flat-remix -y 
sudo apt update
sudo apt install flat-remix flat-remix-gtk -y

#mint
sudo wget http://packages.linuxmint.com/pool/main/m/mint-x-icons/mint-x-icons_1.5.2_all.deb
sudo wget http://packages.linuxmint.com/pool/main/m/mint-y-icons/mint-y-icons_1.3.4_all.deb
sudo wget http://packages.linuxmint.com/pool/main/m/mint-themes/mint-themes_1.8.2_all.deb
sudo dpkg -i mint-x-icons_1.5.2_all.deb
sudo dpkg -i mint-y-icons_1.3.4_all.deb
sudo dpkg -i mint-themes_1.8.2_all.deb

#adapta-gtk-theme
sudo apt-add-repository ppa:tista/adapta -y
sudo apt update
sudo apt install adapta-gtk-theme -y

#yaru
sudo add-apt-repository ppa:communitheme/ppa -y
sudo apt update
sudo apt install yaru-theme-gnome-shell yaru-theme-icon yaru-theme-unity yaru-theme-gtk yaru-theme-sound -y

#wallpapers
sudo apt install ubuntu-wallpapers-bionic -y