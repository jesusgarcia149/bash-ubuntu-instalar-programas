#!/bin/bash

comp_version() {
	read -p "Dime tu version de Ubuntu [18.04/20.04]: " version
	if [ "$version" = "18.04" ]
	then
		echo "Version" $version "si registrada"
	elif [ "$version" = "20.04" ]
	then
		echo "Version" $version "no registrada temporalmente"
		comp_version
	else
		echo "Version no registrada, intentalo nuevamente"
		comp_version
	fi
}
comp_arquitectura() {
	read -p "Dime tu arquitectura de Ubuntu [i386/amd64]: " arquitectura
	if [ "$arquitectura" = "i386" ]
	then
		echo "arquitectura" $arquitectura "si registrada"

	elif [ "$arquitectura" = "amd64" ]
	then
		echo "arquitectura" $arquitectura "si registrada"

	else
		echo "arquitectura no registrada, intentalo nuevamente"
		comp_arquitectura
	fi
}
comp_tarea() {
	echo "Dime que quieres hacer:"
	echo "Opcion [1]: descargar e instalar programas"
	echo "Opcion [2]: descargar y almacenar programas"
	echo "Opcion [3]: instalar programas almacenados"
	read -p "Elige una opcion: " opcion
	if [ "$opcion" = "1" ]
	then
		echo "descargar e instalar programas"
        tarea="descargar-instalar-paquetes"
	elif [ "$opcion" = "2" ]
	then
		echo "descargar y almacenar programas"
        tarea="descargar-almacenar-paquetes"
	elif [ "$opcion" = "3" ]
	then
		echo "instalar programas almacenados"
        tarea="almacenados-instalar-paquetes"
	else
		echo "opcion no registrada, intentalo nuevamente"
		comp_tarea
	fi
}
comp_paquetes_basicos() {
    tput reset
    echo "¿Quieres instalar los paquetes basicos?"
    echo ""
    echo "1.- navegadores:"
    echo "- firefox"
    echo "- google-chrome"
    echo ""
    echo "2.-documentos:"
    echo "gscan2pdf"
    echo "ocrfeeder tesseract-ocr"
    echo "libreoffice libreoffice-l10n-es"
    echo ""
    echo "3.-multimedia:"
    echo "clementine"
    echo "vlc"
    echo ""
    echo "4.-compresion:"
    echo "unrar"
    echo ""
    echo "6.-utilidades:"
    echo "gparted"
    echo "htop"
    echo "screenfetch"
    echo ""
    echo "7.-descargas:"
    echo "qbittorrent"
    echo "megasync"
    echo "xtreme-download-manager"
    echo ""
    echo "12.-redes:"
    echo "nast nmap"
    echo "tor"
    echo ""
    read -p "Si o No [y/n]: " basicos
    if [ "$basicos" = "y" ]
	then
		echo "Se instalaran los paquetes basicos"
	elif [ "$basicos" = "n" ]
	then
		echo "No se instalaran los paquetes basicos"
	else
		echo "opcion no registrada, intentalo nuevamente"
		comp_paquetes_basicos
        echo ""
	fi
}
comp_paquetes_controladores() {
    tput reset
    echo "¿Quieres instalar los paquetes controladores?"
    echo ""
    echo "10.-controladores"
    echo "- nvidia-gforce-405: nvidia-340"
    echo "- nvidia-gforce-405: nvidia-opencl-icd-340"
    echo ""
    read -p "Si o No [y/n]: " controladores
    if [ "$controladores" = "y" ]
	then
		echo "Se instalaran los paquetes controladores"
	elif [ "$controladores" = "n" ]
	then
		echo "No se instalaran los paquetes controladores"
	else
		echo "opcion no registrada, intentalo nuevamente"
		comp_paquetes_controladores
        echo ""
	fi
}
comp_paquetes_arranques() {
    clear
    echo "¿Quieres instalar los paquetes arranques?"
    echo ""
    echo "11.-arranques-reparacion"
    echo "- boot-repair"
    echo "- woeusb"
    echo ""
    read -p "Si o No [y/n]: " arranques
    if [ "$arranques" = "y" ]
	then
		echo "Se instalaran los paquetes arranques"
	elif [ "$arranques" = "n" ]
	then
		echo "No se instalaran los paquetes arranques"
	else
		echo "opcion no registrada, intentalo nuevamente"
		comp_paquetes_arranques
        echo ""
	fi
}
comp_paquetes_personalizacion() {
    tput reset
    echo "¿Quieres instalar los paquetes personalizacion?"
    echo ""
    echo "13.-personalizacion"
    echo "- zorin: xfce4-zorinmenulite-plugin zorin-agent-geoclue2 zorin-desktop-themes zorin-os-default-settings zorin-os-wallpapers zorin-appearance zorin-exec-guard zorin-os-file-templates zorin-os-wallpapers-15 zorin-appearance-layouts-support zorin-exec-guard-app-db zorin-os-lite-core zorin-sound-theme zorin-appearance-layouts-xfce-core zorin-icon-themes zorin-os-lite-default-settings zorin-auto-theme zorin-os-artwork zorin-os-lite-desktop thunar"
    echo "- arc-theme papirus-icons-theme"
    echo "- flat-remix"
    echo ""
    read -p "Si o No [y/n]: " personalizacion
    if [ "$personalizacion" = "y" ]
	then
		echo "Se instalaran los paquetes arranques"
	elif [ "$personalizacion" = "n" ]
	then
		echo "No se instalaran los paquetes arranques"
	else
		echo "opcion no registrada, intentalo nuevamente"
		comp_paquetes_personalizacion
        echo ""
	fi
}
comp_paquetes_multimedia() {
    tput reset
    echo "¿Quieres instalar los paquetes multimedia?"
    echo ""
    echo "15.1.-multimedia"
    echo "- audacity"
    echo "- inkscape"
    echo "- blender"
    echo "- simplescreenrecorder"
    echo "- kazam"
    echo "- vokoscreen" 
    echo "- openshot"
    echo "- kdenlive"
    echo "- gimp"
    echo "- ffmulticonverter"
    echo ""
    read -p "Si o No [y/n]: " multimedia
    if [ "$multimedia" = "y" ]
	then
		echo "Se instalaran los paquetes multimedia"
	elif [ "$multimedia" = "n" ]
	then
		echo "No se instalaran los paquetes multimedia"
	else
		echo "opcion no registrada, intentalo nuevamente"
		comp_paquetes_multimedia
        echo ""
	fi
}
comp_paquetes_desarrollo() {
    tput reset
    echo "¿Quieres instalar los paquetes desarrollo?"
    echo ""
    echo "15.2.-desarrollo"
    echo "- brackets"
    echo "- npm"
    echo "- nodejs"
    echo "- git"
    echo ""
    read -p "Si o No [y/n]: " desarrollo
    if [ "$desarrollo" = "y" ]
	then
		echo "Se instalaran los paquetes desarrollo"
	elif [ "$desarrollo" = "n" ]
	then
		echo "No se instalaran los paquetes desarrollo"
	else
		echo "opcion no registrada, intentalo nuevamente"
		comp_paquetes_desarrollo
        echo ""
	fi
}
comp_paquetes_emuladores() {
    tput reset
    echo "¿Quieres instalar los paquetes emuladores?"
    echo ""
    echo "Emuladores:"
    echo "- nestopia"
    echo "- kega-fusion"
    echo "- zsnes"
    echo "- mednafen"
    echo "- mupen64plus-qt"
    echo "- desmume"
    echo "- dolphin-emu"
    echo "- ppsspp"
    echo ""
    read -p "Si o No [y/n]: " emuladores
    if [ "$emuladores" = "y" ]
	then
		echo "Se instalaran los paquetes emuladores"
	elif [ "$emuladores" = "n" ]
	then
		echo "No se instalaran los paquetes emuladores"
	else
		echo "opcion no registrada, intentalo nuevamente"
		comp_paquetes_emuladores
        echo ""
	fi
}
comp_proyectos_github() {
    tput reset
    echo "¿Quieres instalar mis proyectos de github?"
    echo ""
    echo "Proyectos:"
    echo "- bash-ubuntu-instalar-programas"
    echo "- php-tienda"
    echo "- php-crud-with-images"
    echo "- php-crud"
    echo "- php-auth-system"
    echo "- js-nodejs-first-page"
    echo "- js-pong"
    echo "- js-planificador-de-rutas"
    echo "- js-localstorage-crud"
    echo "- js-vuejs-cms"
    echo ""
    read -p "Si o No [y/n]: " proyectos_github
    if [ "$proyectos_github" = "y" ]
	then
		echo "Se instalaran mis proyectos de github"
	elif [ "$proyectos_github" = "n" ]
	then
		echo "No se instalaran mis proyectos de github"
	else
		echo "opcion no registrada, intentalo nuevamente"
		comp_proyectos_github
        echo ""
    fi
}
instalacion() {
    tput reset
    #cambiamos al directorio de la version
    cd $version
    #basicos
    if [ "$basicos" = "y" ]
        then
        sudo sh ./$tarea"-basicos-"$version"-"$arquitectura.sh
    fi
    #controladores
    if [ "$controladores" = "y" ]
        then
        sudo sh ./$tarea"-controladores-"$version"-all".sh
    fi
    #arranques
    if [ "$arranques" = "y" ]
        then
        sudo sh ./$tarea"-herramientas-arranques-reparacion-"$version"-all".sh
    fi
    #personalizacion
    if [ "$personalizacion" = "y" ]
        then
        sudo sh ./$tarea"-personalizacion-"$version"-all".sh
    fi
    #multimedia
    if [ "$multimedia" = "y" ]
        then
        sudo sh ./$tarea"-multimedia-"$version"-all".sh
    fi
    #desarrollo
    if [ "$desarrollo" = "y" ]
        then
        sudo sh ./$tarea"-desarrollo-"$version"-all".sh
    fi
    #emuladores
    if [ "$emuladores" = "y" ]
        then
        sudo sh ./$tarea"-emuladores-"$version"-all".sh
    fi
    #proyectos
    if [ "$proyectos_github" = "y" ]
        then
    	cd ../
    	cd ./proyectos-github
    	sudo chmod 777 ./bash-descargar-instalar-proyectos-github-all.sh
    	sudo sh ./bash-descargar-instalar-proyectos-github-all.sh
    fi
}
mostrar_datos() {
	tput reset
	echo "Instalacion Finalizada!"
	echo "version:" $version
	echo "arquitectura:" $arquitectura
	echo "tarea:" $tarea
	echo "Paquetes instalados:"
	echo "basicos:" $basicos
	echo "controladores:" $controladores
	echo "arranques:" $arranques
	echo "personalizacion:" $personalizacion
	echo "multimedia:" $multimedia
	echo "desarrollo:" $desarrollo
	echo "emuladores:" $emuladores
	echo "proyectos-github:" $proyectos_github
}
comp_version
comp_arquitectura
comp_tarea
comp_paquetes_basicos
comp_paquetes_controladores
comp_paquetes_arranques
comp_paquetes_personalizacion
comp_paquetes_multimedia
comp_paquetes_desarrollo
comp_paquetes_emuladores
comp_proyectos_github
instalacion
mostrar_datos
