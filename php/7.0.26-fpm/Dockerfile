# Version: 0.0.1
FROM php:7.0.26-fpm
MAINTAINER Sligcm "sligcm@gmail.com"
RUN ["ln", "-sf", "/usr/share/zoneinfo/Asia/Shanghai", "/etc/localtime"]
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
&& docker-php-ext-install -j$(nproc) iconv mcrypt mbstring mysqli pdo pdo_mysql shmop \
&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
&& docker-php-ext-install -j$(nproc) gd