FROM php:8.1

WORKDIR /source
COPY . .
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
# 安裝 unzip 指令
RUN apt update && apt install unzip
RUN composer install

CMD ["php", "artisan", "serve", "--host", "0.0.0.0"]
