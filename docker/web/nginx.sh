#!/bin/sh

sed -i "s/%fpm-ip%/$FPM_PORT_9000_TCP_ADDR/" /etc/nginx/sites-available/default

exec /usr/sbin/nginx