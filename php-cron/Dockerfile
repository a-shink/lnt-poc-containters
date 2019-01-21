FROM phpdockerio/php71-cli:latest
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php7.1-mysql php-redis php7.1-bz2 php7.1-gd cron \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* 

RUN php -v

CMD ["/usr/sbin/cron", "-f", "-L", "15"]
