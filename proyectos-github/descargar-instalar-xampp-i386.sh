#!/bin/bash

instalamos_xampp() {
	sudo apt install wget -y
	sudo wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/5.5.35/xampp-linux-5.5.35-0-installer.run/download
	sudo chmod 777 ./xampp-linux-5.5.35-0-installer.run
	sudo ./xampp-linux-5.5.35-0-installer.run/download
}
instalamos_xampp