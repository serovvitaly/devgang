FROM php:7.2-fpm-alpine

WORKDIR /var/www

EXPOSE 8000

RUN apk update \
    && apk add git \
    && apk add zlib-dev && docker-php-ext-install zip \
    && wget https://getcomposer.org/composer.phar \
    && mv composer.phar /usr/local/bin/composer && chmod a+x /usr/local/bin/composer

