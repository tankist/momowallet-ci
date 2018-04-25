FROM php:5.4-cli

RUN apt-get update && apt-get install wget git -y

RUN docker-php-ext-install mbstring pcntl

RUN curl -s https://getcomposer.org/installer --output composer-setup.php && \
    php composer-setup.php --filename=composer --install-dir=/usr/local/bin && \
    chmod a+rx /usr/local/bin/composer

RUN wget http://rocketeer.autopergamene.eu/versions/rocketeer.phar && \
    chmod +x rocketeer.phar && \
    mv rocketeer.phar /usr/local/bin/rocketeer