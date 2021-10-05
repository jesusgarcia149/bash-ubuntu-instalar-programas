#! /bin/bash

#zorin-theme
#url: https://launchpad.net/%7Ezorinos/+archive/ubuntu/stable/+index?batch=75&direction=backwards&memo=150&start=75
#sudo add-apt-repository ppa:zorinos/stable -y
#sudo apt update
#sudo apt install xfce4-zorinmenulite-plugin zorin-agent-geoclue2 zorin-desktop-themes zorin-os-default-settings zorin-os-wallpapers zorin-appearance zorin-exec-guard zorin-os-file-templates zorin-os-wallpapers-15 zorin-appearance-layouts-support zorin-exec-guard-app-db zorin-os-lite-core zorin-sound-theme zorin-appearance-layouts-xfce-core zorin-icon-themes zorin-os-lite-default-settings zorin-auto-theme zorin-os-artwork zorin-os-lite-desktop thunar -y

#plank
#sudo apt-get install plank -y

#arc-theme papirus-icons-theme
#sudo apt install arc-theme papirus-icon-theme -y

#flat-remix-theme
#sudo add-apt-repository ppa:daniruiz/flat-remix -y 
#sudo apt update
#sudo apt install flat-remix flat-remix-gtk -y

#mint
#sudo wget http://packages.linuxmint.com/pool/main/m/mint-x-icons/mint-x-icons_1.5.2_all.deb
#sudo wget http://packages.linuxmint.com/pool/main/m/mint-y-icons/mint-y-icons_1.3.4_all.deb
#sudo wget http://packages.linuxmint.com/pool/main/m/mint-themes/mint-themes_1.8.2_all.deb
#sudo dpkg -i mint-x-icons_1.5.2_all.deb
#sudo dpkg -i mint-y-icons_1.3.4_all.deb
#sudo dpkg -i mint-themes_1.8.2_all.deb

#adapta-gtk-theme
#sudo apt-add-repository ppa:tista/adapta -y
#sudo apt update
#sudo apt install adapta-gtk-theme -y

#yaru
#sudo add-apt-repository ppa:communitheme/ppa -y
#sudo apt update
#sudo apt install yaru-theme-gnome-shell yaru-theme-icon yaru-theme-unity yaru-theme-gtk yaru-theme-sound -y

#wallpapers
#sudo apt install ubuntu-wallpapers-bionic -y

#Huawei Theme
sudo apt install wget -y
#creamos las carpetas
sudo mkdir /home/jesus/.icons
sudo mkdir /home/jesus/.themes
#descargamos de instalamos los iconos
# Glory icon theme(Huawei Icons)
#https://www.xfce-look.org/s/XFCE/p/1341835
#https://github.com/yeyushengfan258/Glory-icon-theme
sudo wget https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MTk5Njc1ODQiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjMwYzI4ZTFjZTVjZGJmNDU3NjNhNGQwOTA4YjViY2E0OWRmMmNiNjU5ZmM1YTBiMTc3ZWZjYjhhMzgxMjkyMDNlNWVkOTgxMzdjYjNhM2U5MmZhZDIxZDBiNzMzMGQ3MmQ0YTliMjYwYWZjYzRjMGRjMTE1NGFkOWUxOGQ0MzNhIiwidCI6MTYyMzg1OTkzOCwic3RmcCI6IjdhOWZlMWJkMTM3YzZmNjRlZTZlYzc5MjdlMzIyOTEyIiwic3RpcCI6IjE4Ni45My4xOTAuMTAifQ.g85VslJu5WbCtjVlME427fptbdkx1LSkVJlnm60CRvQ/Glory.tar.xz
sudo tar xvf Glory.tar.xz
sudo mv Glory Glory-dark /home/jesus/.icons
#descargamos de instalamos los temas
# Windows 10 gtk theme (Huawei GTK)
#https://www.xfce-look.org/p/1216281/
sudo wget https://dllb.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE1MTkzOTQxNzEiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjY4NGQ1ZjI1NDNjMDVmZmZhNGM4Nzc5ZTJlOWJjNDhlNGIzZWIzZTkxOWU5ZDhjMWNiNmI3ZjJlMDBiZGY1YmZlYTYwMzc3NTY0MjE0ZGQwYjlkN2RlYzY0MzZmMGY5OTc5NTMwNGQ2MjhlZjNlNjMyMDk0NDhjY2FmMjQ0YjNkIiwidCI6MTYyMzg1ODYzNSwic3RmcCI6bnVsbCwic3RpcCI6bnVsbH0.7aB9xcgUNdkBluXmvmKDCgsaFUX9R9eJHUrKTDSUzHc/windows-10-master.zip
sudo unzip windows-10-master.zip
sudo mv Windows-10-master /home/jesus/.themes
#localizacion de los wallpapers
https://drive.google.com/drive/folders/1anCThE5X0LWaOPdr3nCrUVl38PC0cYB3
#Huawei P Smart 2019
https://wallpaperaccess.com/huawei-2019
