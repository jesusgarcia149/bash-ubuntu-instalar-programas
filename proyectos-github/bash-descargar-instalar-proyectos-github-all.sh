#!/bin/bash
sudo apt install git -y
instalamos_proyectos(){
	#definimos el directorio
	directorio=/opt/lampp/htdocs/
	#si no existe el archivo lo creamos
	if [ -d "$directorio" ]; 
	then
		cd $directorio
		# almacenamos todos los archivos que estan dentro de htdocs en una carpeta llamada lamp
		sudo mkdir lampp
		sudo mv /opt/lampp/htdocs/dashboard /opt/lampp/htdocs/lampp
		sudo mv /opt/lampp/htdocs/img /opt/lampp/htdocs/lampp
		sudo mv /opt/lampp/htdocs/webalizer /opt/lampp/htdocs/lampp
		sudo mv /opt/lampp/htdocs/applications.html /opt/lampp/htdocs/lampp
		sudo mv /opt/lampp/htdocs/bitnami.css /opt/lampp/htdocs/lampp
		sudo mv /opt/lampp/htdocs/favicon.ico /opt/lampp/htdocs/lampp
		sudo mv /opt/lampp/htdocs/index.php /opt/lampp/htdocs/lampp
		# almacenamos mis proyectos dentro de una carpeta llamada apps
		sudo mkdir apps
		cd ./apps
		sudo git clone https://github.com/jesusgarcia149/bash-ubuntu-instalar-programas.git
		sudo git clone https://github.com/jesusgarcia149/php-tienda.git
		sudo git clone https://github.com/jesusgarcia149/php-crud-with-images.git
		sudo git clone https://github.com/jesusgarcia149/php-crud.git
		sudo git clone https://github.com/jesusgarcia149/php-auth-system.git
		sudo git clone https://github.com/jesusgarcia149/js-nodejs-first-page.git
		sudo git clone https://github.com/jesusgarcia149/js-pong.git
		sudo git clone https://github.com/jesusgarcia149/js-planificador-de-rutas.git
		sudo git clone https://github.com/jesusgarcia149/js-localstorage-crud.git
		sudo git clone https://github.com/jesusgarcia149/js-vuejs-cms.git
		#sudo git clone https://github.com/jesusgarcia149/php-laravel-api.git
		#sudo git clone https://github.com/jesusgarcia149/js-angular-crud.git
	else
		sudo apt install wget -y
		comp_arquitectura
		if [ "$arquitectura" = "amd64" ]
		then
			sudo wget https://downloadsapachefriends.global.ssl.fastly.net/7.4.10/xampp-linux-x64-7.4.10-0-installer.run
			sudo chmod 777 ./xampp-linux-x64-7.4.10-0-installer.run
			sudo ./xampp-linux-x64-7.4.10-0-installer.run
		fi
		sudo sh ./bash-descargar-instalar-proyectos-desarrollo.sh
	fi
}
comp_arquitectura() {
	read -p "Dime tu arquitectura de Ubuntu [i386/amd64]: " arquitectura
	if [ "$arquitectura" = "i386" ]
	then
		echo "arquitectura" $arquitectura "no soportada temporalmente"
		comp_arquitectura
	elif [ "$arquitectura" = "amd64" ]
	then
		echo "arquitectura" $arquitectura "si registrada"
		sudo wget https://downloadsapachefriends.global.ssl.fastly.net/7.4.10/xampp-linux-x64-7.4.10-0-installer.run
		sudo chmod 777 ./xampp-linux-x64-7.4.10-0-installer.run
		sudo ./xampp-linux-x64-7.4.10-0-installer.run
	else
		echo "arquitectura no registrada, intentalo nuevamente"
		comp_arquitectura
	fi
}
instalamos_proyectos
