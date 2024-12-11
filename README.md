# Instalación y Configuración de WordPress con WP-CLI

Este repositorio contiene los scripts y configuraciones necesarias para automatizar la instalación de WordPress utilizando WP-CLI, así como la configuración de un servidor con la pila LAMP y la implementación de HTTPS con Let's Encrypt.

## Contenido

- **conf/000-default.conf**: Configuración del host virtual de Apache.
- **htaccess/.htaccess**: Reglas personalizadas para Apache.
- **scripts/.env**: Archivo que contiene las variables de configuración utilizadas en los scripts.
- **scripts/install_lamp.sh**: Script de Bash para la instalación automatizada de la pila LAMP.
- **scripts/setup_letsencrypt_https.sh**: Script de Bash para configurar HTTPS utilizando Let's Encrypt.
- **scripts/deploy_wordpress_with_wpcli.sh**: Script de Bash para instalar y configurar WordPress mediante WP-CLI.

## Pasos para la Instalación

1. Clonar este repositorio en su servidor:

   ```bash
   git clone <URL_DEL_REPOSITORIO>
   cd <NOMBRE_DEL_REPOSITORIO>
   ```
2. Configurar las variables de entorno en el archivo `scripts/.env` según las necesidades de su proyecto.
3. Ejecutar los scripts en el siguiente orden:

   a. Instalar la pila LAMP ejecutando:

   ```bash
   bash scripts/install_lamp.sh
   ```

   b. Configurar HTTPS con Let's Encrypt ejecutando:

   ```bash
   bash scripts/setup_letsencrypt_https.sh
   ```

   c. Implementar y configurar WordPress ejecutando:

   ```bash
   bash scripts/deploy_wordpress_with_wpcli.sh
   ```

## Detalles de los Scripts

### `install_lamp.sh`

Este script automatiza la instalación de Apache, MySQL y PHP. También habilita los módulos necesarios para que WordPress funcione correctamente, como `mod_rewrite` en Apache.

### `setup_letsencrypt_https.sh`

Este script instala Certbot y solicita un certificado SSL/TLS gratuito para su dominio utilizando Let's Encrypt. Configura automáticamente Apache para que utilice el certificado emitido.

### `deploy_wordpress_with_wpcli.sh`

Este script utiliza WP-CLI para descargar, configurar e instalar WordPress en el directorio raíz `/var/www/html`. También establece permisos adecuados para garantizar la seguridad y el correcto funcionamiento del sitio.
