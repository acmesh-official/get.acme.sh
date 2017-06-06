FROM neilpang/php:5

COPY .htaccess /var/www/html/
COPY get.sh /var/www/html/

ENV VIRTUAL_HOST=get.acme.sh

ENV ENABLE_ACME=true
