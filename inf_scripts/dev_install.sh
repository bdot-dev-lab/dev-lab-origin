#!/bin/bash
varusername=$USER
echo $varusername
echo -e "\e[42m++++++++++GIT++++++++++\e[0m"
sudo -u $varusername ./git_globals.sh
echo -e "\e[42m++++++++++JAVA++++++++++\e[0m"
sudo -u root ./java_install.sh
echo "\e[42m++++++++++JENKINS++++++++++\e[0m"
sudo -u root ./jenkins_install.sh 
echo "\e[42m++++++++++DOCKER++++++++++\e[0m"
sudo -u root ./docker_install.sh
echo -e "\e[42m++++++++++FINALIZADO++++++++++\e[0m"
sudo usermod -aG docker $USER

