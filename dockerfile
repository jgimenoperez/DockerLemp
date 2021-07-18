FROM php:fpm

# Install mysqli
RUN docker-php-ext-install mysqli  


# Install composer
RUN apt-get update && docker-php-ext-install pdo_mysql && \
    apt-get install -y curl nano git zlib1g-dev && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


