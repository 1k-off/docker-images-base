#!/usr/bin/env sh
chown -R www-data:www-data /var/www/html
find /var/www/html -type f -exec chmod 644 {} \;
find /var/www/html -type d -exec chmod 755 {} \;
rm -f /etc/nginx/sites-enabled/default
rm -f /etc/nginx/sites-available/default
exec $@
