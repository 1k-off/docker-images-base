# nginx-php
# Featured tags
- `8.0` - nginx, php8.0-fpm, pre-installed php-modules, cron, supervisor
- `8.1` - nginx, php8.1-fpm, pre-installed php-modules, cron, supervisor
- `8.2` - nginx, php8.2-fpm, pre-installed php-modules, cron, supervisor

## Existing, but without updates
- `5.6` - nginx, php5.6-fpm, pre-installed php-modules, cron, supervisor
- `7.0` - nginx, php7.0-fpm, pre-installed php-modules, cron, supervisor
- `7.1` - nginx, php7.1-fpm, pre-installed php-modules, cron, supervisor
- `7.2` - nginx, php7.2-fpm, pre-installed php-modules, cron, supervisor
- `7.3` - nginx, php7.3-fpm, pre-installed php-modules, cron, supervisor
- `7.4` - nginx, php7.4-fpm, pre-installed php-modules, cron, supervisor

**Note: This repo does not publish or maintain a latest tag. Please declare a specific tag when pulling or referencing images from this repo.**
# Description

PHP-FPM container with pre-installed modules, nginx and cron. Can be useful for development or one-container applications.  

Pull the nginx-php image from the Docker Hub Repository:

```kosar/nginx-php```

and use the following command to start a container.

Linux container:
```bash
docker run -itd -v <path>:/var/www/html -p <port>:80 kosar/nginx-php:tag
```

## PHP modules
```
bcmath
Core
ctype
curl
date
dom
exif
fileinfo
filter
ftp
gd
hash
iconv
imagick
json
libxml
mbstring
mysqli
mysqlnd
openssl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
readline
Reflection
session
SimpleXML
sodium
SPL
sqlite3
standard
tokenizer
xml
xmlreader
xmlwriter
Zend OPcache
zip
zlib
```
