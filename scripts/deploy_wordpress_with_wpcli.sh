#!/bin/bash

# Descargar WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

# Descargar WordPress
cd /var/www/html
sudo wp core download --allow-root

# Crear archivo wp-config.php
sudo wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST --allow-root

# Instalar WordPress
sudo wp core install --url=$WP_URL --title="Mi Sitio WordPress" --admin_user=admin --admin_password=admin --admin_email=admin@tudominio.com --allow-root
