#!/bin/bash

# Instalar Certbot
sudo apt install certbot python3-certbot-apache -y

# Obtener el certificado SSL de Let's Encrypt
sudo certbot --apache -d tudominio.com -d www.tudominio.com

# Reiniciar Apache para aplicar los cambios
sudo systemctl restart apache2
