#!/bin/bash

# Actualizar el sistema
sudo apt update && sudo apt upgrade -y

# Instalar Apache
sudo apt install apache2 -y

# Instalar MySQL
sudo apt install mysql-server -y

# Instalar PHP y dependencias
sudo apt install php libapache2-mod-php php-mysql -y

# Habilitar Apache y MySQL al inicio
sudo systemctl enable apache2
sudo systemctl enable mysql

# Iniciar los servicios
sudo systemctl start apache2
sudo systemctl start mysql
