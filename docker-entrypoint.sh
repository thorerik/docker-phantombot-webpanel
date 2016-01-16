#!/bin/bash
set -e

if [ "$1" = 'webpanel' ]; then
    if [ ! -f /var/www/html/index.php ]; then
        wget \
        https://github.com/PhantomBot/PhantomBot-WebPanel/archive/${PBWP_VERSION}.tar.gz \
        && tar xzf ${PBWP_VERSION}.tar.gz \
        && rm -f ${PBWP_VERSION}.tar.gz \
        && mv PhantomBot-WebPanel-${PBWP_VERSION}/* /var/www/html/ \
        && rm /var/www/html/index.html \
        && chown -R www-data:www-data /var/www/html
        rm /etc/apache2/sites-enabled/001-*
        a2enmod socache_shmcb
    fi

    /usr/sbin/apache2ctl -DFOREGROUND
fi
exec "$@"
