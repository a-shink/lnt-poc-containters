FROM phpdockerio/php71-cli:latest

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get -y --no-install-recommends install php7.1-dev build-essential

# tideways profiler installation
RUN echo "Build tideways"
#RUN git clone https://github.com/tideways/php-profiler-extension.git /tmp/xhptof
RUN git clone -b v4.1.7 --depth 1 https://github.com/tideways/php-profiler-extension.git /tmp/xhptof
WORKDIR /tmp/xhptof
RUN phpize && ./configure && make 

RUN ls -lR /tmp/xhptof

RUN git log

RUN echo "Grab /tmp/xhptof/modules/tideways.so"

RUN php -v

CMD ["php", "-a"]
