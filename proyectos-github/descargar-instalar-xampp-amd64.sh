#!/bin/bash

instalamos_xampp() {
	sudo apt install wget -y
	sudo wget https://downloadsapachefriends.global.ssl.fastly.net/7.4.10/xampp-linux-x64-7.4.10-0-installer.run
	sudo chmod 777 ./xampp-linux-x64-7.4.10-0-installer.run
	sudo ./xampp-linux-x64-7.4.10-0-installer.run
}
instalamos_xampp