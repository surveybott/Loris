#!/bin/bash
# from https://acesloris.readthedocs.io/en/latest/docs/wiki/00_SERVER_INSTALL_AND_CONFIGURATION/01_LORIS_Install/CentOS/README.html

# Apache2
sudo yum install httpd
sudo systemctl enable httpd
sudo systemctl start httpd

# PHP 7.4
sudo yum install epel-release
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
sudo yum install yum-utils
sudo yum update
# By default, the repository for PHP 5.4 is enabled
# Make sure to have only one repository for PHP enabled
sudo yum-config-manager --disable remi-php54
sudo yum-config-manager --enable remi-php74
sudo yum install php php-pdo php-pdo_mysql php-fpm php-gd php-json php-mbstring php-mysqlnd php-xml php-xmlrpc php-opcache

# NodeJS
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum install -y nodejs

# PHP Composer
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Loris
