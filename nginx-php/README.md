# nginx-php
# Featured tags
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
