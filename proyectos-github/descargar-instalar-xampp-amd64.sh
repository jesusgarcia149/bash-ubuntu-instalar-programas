#!/bin/bash

instalamos_xampp() {
	#definimos la ubicacion del archivo
	archivo=./xampp-linux-x64-7.4.10-0-installer.run
	#si no existe el archivo lo descargamos
	if [ ! -f "$archivo" ]; then
		sudo apt install wget -y
		sudo wget https://downloadsapachefriends.global.ssl.fastly.net/7.4.10/xampp-linux-x64-7.4.10-0-installer.run
	fi
	sudo chmod 777 ./xampp-linux-x64-7.4.10-0-installer.run
	sudo ./xampp-linux-x64-7.4.10-0-installer.run
}
instalamos_xampp