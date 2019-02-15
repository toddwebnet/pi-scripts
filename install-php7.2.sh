#!/bin/bash

# Get the key.
wget -qO - https://packages.sury.org/php/apt.gpg | sudo apt-key add -

# Add the apt source.
sudo echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list

# Update.
sudo apt-get update

# Install what you need...
sudo apt-get install -y zip unzip php7.2 libapache2-mod-php7.2 php7.2-mbstring php7.2-cli php7.2-pgsql php7.2-bcmath php7.2-gd php7.2-curl php7.2-dom  php7.2-soap php7.2-curl php7.2-mysql php7.2-mysqli php7.2-gettext gcc make autoconf libc-dev pkg-config



echo -e "\n--- Installing Composer for PHP package management ---\n"
sudo curl --silent https://getcomposer.org/installer | php > /dev/null
sudo mv composer.phar /usr/local/bin/composer
