FROM php:7.1-apache

COPY index.php /var/www/html

WORKDIR /var/www/html
