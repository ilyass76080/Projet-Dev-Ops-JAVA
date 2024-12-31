FROM php:8.2-apache

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    default-mysql-client && \
    docker-php-ext-install pdo_mysql

COPY . /var/www/html

WORKDIR /var/www/html

EXPOSE 8082

CMD ["apache2-foreground"]
