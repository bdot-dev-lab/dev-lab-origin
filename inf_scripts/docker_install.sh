#!/bin/bash
echo -e "\e[42mINSTALACION DE DOCKER PARA EL AMBIENTE DE DESPLIEGUE\e[0m"
sudo apt-get remove docker docker-engine docker.io containerd runc
echo -e "\e[42mVerificando actualizaciones....\e[0m"
sudo apt-get update
echo -e "\e[42mVerificando actualizaciones.... FINALIZADO\e[0m"
echo -e "\e[42mInstalando requisitos previos....\e[0m"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo -e "\e[42mInstalando requisitos previos....FINALIZADO\e[0m"
echo -e "\e[42mInstalando llave GPG....\e[0m"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo -e "\e[42mInstalando llave GPG....FINALIZADO\e[0m"
echo -e "\e[42mAgregando repositorio Docker....\e[0m"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo -e "\e[42mAgregando repositorio Docker....FINALIZADO\e[0m"


echo -e "\e[42mVerificando actualizaciones OTRA VEZ JEJEJ....\e[0m"
sudo apt-get update
echo -e "\e[42mVerificando actualizaciones.... FINALIZADO OTRA VEZ \e[0m"
echo -e "\e[42mInstalando docker....\e[0m"
sudo apt-get install docker-ce docker-ce-cli containerd.io
echo -e "\e[42mInstalando docker....FINALIZADO\e[0m"

echo -e "\e[42mAgragando usuario a grupo de gestion de docker....\e[0m"


sudo usermod -aG docker $USER

echo -e "\e[42mAgragando usuario a grupo de gestion de docker....FINALIZADO\e[0m"

echo -e "\e[101mPOR FAVOR REINICIAR SESSION SSH\e[0m"

echo -e "\e[101mPARA VERIFICAR LOS CAMBIOS EJECUTAR EL SIGUIENTE COMANDO LUEGO DE REINICIAR LA SESION....\e[0m"

echo -e "\e[101msystemctl status docker\e[0m"
