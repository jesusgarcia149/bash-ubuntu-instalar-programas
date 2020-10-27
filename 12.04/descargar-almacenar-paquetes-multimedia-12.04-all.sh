#! /bin/bash

#remover archivo lock
#sudo rm /var/cache/apt/archives/lock

#actualizamos repositorios
sudo apt update
sudo apt install wget

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

#15.-especializacion
sudo mkdir $DIRECTORIO/15.-especializacion
#1.-produccion-audiovisual
sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual
#audacity
sudo apt-get install --download-only audacity -y
sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/audacity
sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/audacity
sudo apt-get clean
#gimp
sudo apt-get remove gimp -y
sudo apt-get autoremove --purge -y
#sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo apt-get update
sudo apt-get install --download-only gimp -y
sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/gimp
sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/gimp
sudo apt-get clean
#inkscape
sudo apt-get install --download-only inkscape -y
sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/inkscape
sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/inkscape
sudo apt-get clean
#blender
sudo apt-get install --download-only blender -y
sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/blender
sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/blender
sudo apt-get clean
#simplescreenrecorder
#sudo apt-get install --download-only simplescreenrecorder -y
#sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/simplescreenrecorder
#sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/simplescreenrecorder
#sudo apt-get clean
#kazam
sudo apt-get install --download-only kazam -y
sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/kazam
sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/kazam
sudo apt-get clean
#vokoscreen
#sudo apt-get install --download-only vokoscreen -y
#sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/vokoscreen
#sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/vokoscreen
#sudo apt-get clean
#openshot
sudo apt-get install --download-only openshot -y
sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/openshot
sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/openshot
sudo apt-get clean
#kdenlive
sudo apt-get install --download-only kdenlive -y
sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/kdenlive
sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/kdenlive
sudo apt-get clean
#ffmulticonverter
sudo add-apt-repository ppa:noobslab/apps -y
sudo apt update
sudo apt-get install --download-only ffmulticonverter -y
sudo mkdir $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/ffmulticonverter
sudo cp /var/cache/apt/archives/* $DIRECTORIO/15.-especializacion/1.-produccion-audiovisual/ffmulticonverter
sudo apt-get clean
