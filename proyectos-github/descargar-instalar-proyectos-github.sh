#!/bin/bash
sudo apt install git -y
#definimos el directorio
directorio=/opt/lampp/htdocs/

instalamos_proyectos(){
	cd $directorio
	# almacenamos todos los archivos que estan dentro de htdocs en una carpeta llamada lamp
	sudo mkdir lampp
	sudo mv $directorio/dashboard /opt/lampp/htdocs/lampp
	sudo mv $directorio/img /opt/lampp/htdocs/lampp
	sudo mv $directorio/webalizer /opt/lampp/htdocs/lampp
	sudo mv $directorio/applications.html /opt/lampp/htdocs/lampp
	sudo mv $directorio/bitnami.css /opt/lampp/htdocs/lampp
	sudo mv $directorio/favicon.ico /opt/lampp/htdocs/lampp
	sudo mv $directorio/index.php /opt/lampp/htdocs/lampp

	# creamos el archivo info.php
	touch info.php
	chmod 777 info.php
	info='<?php phpinfo(); ?>'
	echo $info > info.php

	# almacenamos mis proyectos dentro de una carpeta llamada apps
	sudo mkdir apps
	cd ./apps
	#sudo git clone https://github.com/jesusgarcia149/js-angular-crud.git
	#sudo git clone https://github.com/jesusgarcia149/php-laravel-api.git
	sudo git clone https://github.com/jesusgarcia149/php-crud.git
	sudo git clone https://github.com/jesusgarcia149/php-crud-with-images.git
	sudo git clone https://github.com/jesusgarcia149/php-auth-system.git
	sudo git clone https://github.com/jesusgarcia149/php-tienda.git
	sudo git clone https://github.com/jesusgarcia149/js-planificador-de-rutas.git
	sudo git clone https://github.com/jesusgarcia149/js-vuejs-cms.git
	sudo git clone https://github.com/jesusgarcia149/js-localstorage-crud.git
	sudo git clone https://github.com/jesusgarcia149/js-pong.git
	sudo git clone https://github.com/jesusgarcia149/bash-ubuntu-instalar-programas.git
	sudo git clone https://github.com/jesusgarcia149/js-nodejs.git
	sudo git clone https://github.com/jesusgarcia149/js-nodejs-first-page.git
	sudo git clone https://github.com/jesusgarcia149/js-nodejs-mysql-crud.git
	
	# instalamos las dependencias necesarias para los proyectos en nodejs
	cd ./js-nodejs
	sudo npm install
	cd ../
	cd ./js-nodejs-first-page
	sudo npm install
	cd ../
	cd ./js-nodejs-mysql-crud
	sudo npm install
	cd ../
}

instalamos_proyectos
