# nginx-php
![svg image](data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pjxzdmcgdmlld0JveD0iMCAwIDQwIDQwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjx0aXRsZS8+PGcgaWQ9IkRvY2tlciI+PHBhdGggZD0iTTMyLjY2LDE5LjM3QTQuMTIsNC4xMiwwLDAsMCwyOS41NywxOWE0LDQsMCwwLDAtMS42OC0yLjYzbC0uMzQtLjI2LS4yNy4zM0EzLjYzLDMuNjMsMCwwLDAsMjYuNjEsMTlhMy41OSwzLjU5LDAsMCwwLC42MSwxLjY4Yy0uMjcuMTQtLjYxLjI3LS44OC40MWE1LjY3LDUuNjcsMCwwLDEtMS44MS4yNkg3LjExTDcsMjEuNzNhNy41OCw3LjU4LDAsMCwwLC42MSwzLjgzbC4yNi40N3YuMDdjMS42MiwyLjY5LDQuNTEsMy45LDcuNjcsMy45LDYsMCwxMS0yLjYyLDEzLjM4LTguMjcsMS41NS4wNywzLjEtLjM0LDMuODQtMS44MmwuMi0uMzNabS0yMC40NCw3QTEuNDEsMS40MSwwLDAsMSwxMC44MSwyNWExLjQxLDEuNDEsMCwwLDEsMi44MiwwQTEuNDEsMS40MSwwLDAsMSwxMi4yMiwyNi4zN1pNMjAuODksMThIMTguMjd2Mi42MmgyLjYyWm0wLTMuMjlIMTguMjd2Mi42MmgyLjYyWm0wLTMuMzdIMTguMjd2Mi42M2gyLjYyWk0yNC4xMiwxOEgyMS41djIuNjJoMi42MlptLTkuNzUsMEgxMS43NXYyLjYyaDIuNjJWMThabTMuMywwSDE1djIuNjJoMi42M1ptLTYuNTMsMEg4LjUydjIuNjJoMi42MlYxOFptNi41My0zLjI5SDE1djIuNjJoMi42M1ptLTMuMywwSDExLjc1djIuNjJoMi42MlYxNC42N1oiLz48L2c+PC9zdmc+) https://hub.docker.com/r/kosar/nginx-php

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
