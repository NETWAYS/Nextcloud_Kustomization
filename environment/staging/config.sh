#!/bin/bash

cd /var/www/html
#Wait for DB
while [ "$conn" != "mysqld is alive" ]
do
  conn=$(mysqladmin ping -h mariadb-service -u nextcloud -p$MYSQL_PASSWORD)
done
php occ db:add-missing-indices
php occ maintenance:repair --include-expensive
php occ config:system:set trusted_proxies 0 --value="$(hostname -i)"
php occ config:system:set trusted_domains 1 --value=$NEXTCLOUD_TRUSTED_DOMAINS
