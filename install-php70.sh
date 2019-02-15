#!/bin/bash

sudo apt-get update

# Install what you need...
sudo apt-get install -y zip unzip php libapache2-mod-php php-mbstring php-cli php-pgsql php-bcmath php-gd php-curl php-dom  php-soap php-curl php-mysql php-mysqli php-gettext gcc make autoconf libc-dev pkg-config



echo -e "\n--- Installing Composer for PHP package management ---\n"
sudo curl --silent https://getcomposer.org/installer | php > /dev/null
sudo mv composer.phar /usr/local/bin/composer
