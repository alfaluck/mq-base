FROM php:7.0-zts

MAINTAINER Anton Shedlovsky <alfaluck@gmail.com>

RUN docker-php-ext-install -j$(nproc) mysqli

RUN pecl install redis pthreads \
    && docker-php-ext-enable redis pthreads \
    && docker-php-ext-install -j$(nproc) pcntl