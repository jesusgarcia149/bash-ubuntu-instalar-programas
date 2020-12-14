#! /bin/bash

#remover archivo lock
#sudo rm /var/cache/apt/archives/lock

#actualizamos repositorios
sudo apt update

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

#11.-arranques-reparacion
sudo mkdir $DIRECTORIO/11.-arranques-reparacion
#boot-repair
sudo mkdir $DIRECTORIO/11.-arranques-reparacion/boot-repair
sudo add-apt-repository ppa:yannubuntu/boot-repair -y
sudo apt update
sudo apt-get install --download-only boot-repair -y
sudo cp /var/cache/apt/archives/* $DIRECTORIO/11.-arranques-reparacion/boot-repair
sudo apt-get clean
#woeusb
sudo wget http://mirrors.kernel.org/ubuntu/pool/universe/w/wxwidgets3.0/libwxgtk3.0-0v5_3.0.4+dfsg-3_amd64.deb
sudo cp ./libwxgtk3.0-0v5_3.0.4+dfsg-3_amd64.deb $DIRECTORIO/11.-arranques-reparacion/woeusb
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt update
sudo apt-get install --download-only woeusb -y
sudo mkdir $DIRECTORIO/11.-arranques-reparacion/woeusb
sudo cp /var/cache/apt/archives/* $DIRECTORIO/11.-arranques-reparacion/woeusb
sudo apt-get clean
