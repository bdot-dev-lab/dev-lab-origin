#!/bin/bash
# Ask the user for their name
echo -e "\e[42mPor favor tu ayuda con el usuario de GitHub y Email de GitHub\e[0m"
echo -e "\e[42mUsuario GitHub\e[0m"
read varusername
echo -e "\e[42mEmail utilizado en GitHub\e[0m"
read varemail

echo -e "\e[42mLos siguientes comandos serán ejecutados dentro de la configuracion global de GIT\e[0m"
echo -e "\e[101mgit config --global user.name "$varusername"\e[0m"
echo -e "\e[101mgit config --global user.email $varemail\e[0m"
git config --global user.name "$varusername"
git config --global user.email $varemail



