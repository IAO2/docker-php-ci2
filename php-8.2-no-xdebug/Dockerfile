FROM php:8.2

RUN apt-get update

RUN apt-get install -y gnupg 
RUN apt-get install -y libcurl4-openssl-dev 
RUN apt-get install -y sudo 
RUN apt-get install -y git 
RUN apt-get install -y libxslt-dev 
RUN apt-get install -y zlib1g-dev 
RUN apt-get install -y libzip-dev 
RUN apt-get install -y libonig-dev
#RUN apt-get install -y graphviz 
RUN apt-get install -y zip 
RUN apt-get install -y libmcrypt-dev 
#RUN apt-get install -y libicu-dev 
#RUN apt-get install -y g++ 
#RUN apt-get install -y libpcre3-dev 
RUN apt-get install -y libgd-dev 
#RUN apt-get install -y libfreetype6-dev 
#RUN apt-get install -y sqlite 
RUN apt-get install -y curl 
RUN apt-get install -y build-essential 
RUN apt-get install -y unzip 
RUN apt-get install -y gcc 
RUN apt-get install -y make 
RUN apt-get install -y autoconf 
RUN apt-get install -y libc-dev 
RUN apt-get install -y pkg-config

RUN  apt-get clean 
RUN  docker-php-ext-install soap 
RUN  docker-php-ext-install zip 
RUN  docker-php-ext-install xsl 
#RUN  docker-php-ext-configure mbstring --disable-mbregex \
#  && docker-php-ext-install mbstring
RUN  docker-php-ext-install gettext 
RUN  docker-php-ext-install curl 
RUN  docker-php-ext-install pdo_mysql 
#RUN  docker-php-ext-install json 
RUN  docker-php-ext-install mysqli 
RUN  docker-php-ext-install intl 
RUN  docker-php-ext-install opcache 
RUN  docker-php-ext-configure gd --with-freetype --with-jpeg \
  && docker-php-ext-install gd 
RUN  pecl install --nodeps mcrypt-snapshot 
RUN  docker-php-ext-enable mcrypt 

RUN echo "memory_limit = -1;" > $PHP_INI_DIR/conf.d/memory_limit.ini

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#RUN curl -sL https://deb.nodesource.com/setup_6.x | bash && apt-get install -y nodejs && apt-get clean

    # CLEAN UP #################################################################
RUN apt-get clean -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*
