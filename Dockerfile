FROM php:7.0-zts
RUN pecl install redis pthreads \
    && docker-php-ext-enable redis pthreads \
    && docker-php-ext-install -j$(nproc) pcntl