#! /bin/bash

#cambiar al directorio home
cd

#actualizar repositorios
sudo apt update

#whatsapp
sudo add-apt-repository ppa:atareao/whatsapp-desktop -y
sudo apt-get update
sudo apt install whatsapp-desktop -y

#telegram
sudo add-apt-repository ppa:atareao/telegram -y
sudo apt-get update
sudo apt install telegram-desktop -y





