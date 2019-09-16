FROM phpdockerio/php71-fpm:latest
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php7.1-mysql php-redis php7.1-bz2 php7.1-gd php7.1-intl \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* 

COPY etc/php-ini-overrides.ini /etc/php/7.1/fpm/conf.d/99-overrides.ini
COPY etc/z-softosource-def-pool.conf /etc/php/7.1/fpm/pool.d/z-softosource-def-pool.conf

RUN php -v
