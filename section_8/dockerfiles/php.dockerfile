FROM php:8.1-fpm-alpine
    
WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql 

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

# RUN chown -R www-data:www-data . | user who will own the files:group who will own the files | -R means all files inside the directory
RUN chown -R laravel:laravel .

USER laravel