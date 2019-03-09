FROM syncxplus/php:7.3.25-apache-buster

COPY php.ini /usr/local/etc/php/php.ini

COPY ZenTaoPMS.*.zip /tmp/

RUN sed -i 's/\/var\/www\/html/\/var\/www\/www/g' /etc/apache2/sites-enabled/000-default.conf \
 && cd /tmp \
 && unzip -o ZenTaoPMS.*.zip \
 && mv zentaopms/* /var/www/ \
 && rm /var/www/www/install.php /var/www/www/upgrade.php \
 && mkdir -p /var/www/tmp /var/www/www/data \
 && chown -R www-data:www-data /var/www \
 && rm -rf *

VOLUME ["/var/www/config", "/var/www/www/data", "/var/www/tmp"]
