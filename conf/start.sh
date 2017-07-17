#!/bin/bash

if [ "${RAM}" != "" ]; then
  echo "Setup RAM: $RAM static process for php-fpm"
  cp /tmp/www-${RAM}.conf /etc/php5/fpm/pool.d/www.conf
else
  echo "Setup RAM: $RAM dynamic process for php-fpm"
fi

/usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
