FROM phpdockerio/php71-cli:latest
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

COPY run_cron.sh /run_cron.sh

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php7.1-mysql php-redis php7.1-bz2 php7.1-gd cron \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*; chmod a+x /run_cron.sh

RUN php -v

CMD ["/run_cron.sh"]
