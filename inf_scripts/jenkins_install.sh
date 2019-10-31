#/bin/bash
echo -e "\e[42m++++++++++Agregar repositorio jenkins.io++++++++++\e[0m"
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
echo -e "\e[42m++++++++++Instalar Jenkins++++++++++\e[0m"
sudo apt -y install jenkins
echo -e "\e[42m++++++++++Iniciar Jenkins++++++++++\e[0m"
sudo systemctl start jenkins
echo -e "\e[42m++++++++++Verificar Jenkins++++++++++\e[0m"
sudo systemctl status jenkins
echo -e "\e[42m++++++++++Habilitar puerto 8080 en Firewall++++++++++\e[0m"
sudo ufw allow 8080
sudo ufw status
echo -e "\e[42m++++++++++SE DEBE UTILIZAR EL SIGUIENTE PASSWORD EN LA CONSOLA DE JENKINS++++++++++\e[0m"
sudo -u root cat /var/lib/jenkins/secrets/initialAdminPassword
