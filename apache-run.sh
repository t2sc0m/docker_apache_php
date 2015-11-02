#!/bin/bash
. /etc/apache2/envvars
exec dockerize \
     -stdout /var/log/apache2/access.log \
     -stderr /var/log/apache2/error.log \
     /usr/sbin/apache2 -DFOREGROUND
