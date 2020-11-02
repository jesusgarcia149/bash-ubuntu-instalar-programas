#!/bin/bash

instalamos_xampp() {
	#definimos la ubicacion del archivo
	archivo=./xampp-linux-5.5.35-0-installer.run
	#si no existe el archivo lo descargamos
	if [ ! -f "$archivo" ]; then
		sudo apt install wget -y
		sudo wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/5.5.35/xampp-linux-5.5.35-0-installer.run/download
	fi
	sudo chmod 777 ./download
	sudo ./download
}
instalamos_xampp