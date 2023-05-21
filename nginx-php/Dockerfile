ARG PHP_VERSION
FROM php:$PHP_VERSION-fpm
LABEL maintainer="Bogdan Kosarevskyi <kosar@1node.xyz>"
# Run version check
RUN PHP_VER_MAJ="$(echo $PHP_VERSION | head -c 1)"; \
    if [ "$PHP_VER_MAJ" -lt "8" ]; then \
        echo "Old PHP versions are not supported by this Dockerfile. Please, use before8.Dockerfile."; \
        exit 1; \
    fi;
# Fix https://lists.debian.org/debian-devel-announce/2023/03/msg00006.html
RUN sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list; \
    sed -i 's|security.debian.org|archive.debian.org/|g' /etc/apt/sources.list; \
    sed -i '/stretch-updates/d' /etc/apt/sources.list
# persistent dependencies
RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
# Ghostscript is required for rendering PDF previews
		ghostscript \
                supervisor \
                cron \
                nginx \
	; \
	rm -rf /var/lib/apt/lists/*

RUN set -ex; \
	\
	savedAptMark="$(apt-mark showmanual)"; \
	\
	apt-get update; \
	apt-get install -y --no-install-recommends \
		libfreetype6-dev \
		libjpeg-dev \
		libmagickwand-dev \
		libpng-dev \
                libzip-dev \
	; \
        docker-php-ext-configure gd --with-freetype=/usr --with-jpeg=/usr; \
	docker-php-ext-install -j "$(nproc)" \
		bcmath \
		exif \
		gd \
		mysqli \
		pdo \
		pdo_mysql \
		zip \
	; \
	pecl install imagick; \
	docker-php-ext-enable imagick; \
	\
# reset apt-mark's "manual" list so that "purge --auto-remove" will remove all build dependencies
	apt-mark auto '.*' > /dev/null; \
	apt-mark manual $savedAptMark; \
	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so \
		| awk '/=>/ { print $3 }' \
		| sort -u \
		| xargs -r dpkg-query -S \
		| cut -d: -f1 \
		| sort -u \
		| xargs -rt apt-mark manual; \
	\
	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
	rm -rf /var/lib/apt/lists/*

RUN set -eux; \
	docker-php-ext-enable opcache; \
	{ \
		echo 'opcache.memory_consumption=128'; \
		echo 'opcache.interned_strings_buffer=8'; \
		echo 'opcache.max_accelerated_files=4000'; \
		echo 'opcache.revalidate_freq=2'; \
		echo 'opcache.fast_shutdown=1'; \
	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
RUN { \
		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; \
		echo 'display_errors = Off'; \
		echo 'display_startup_errors = Off'; \
		echo 'log_errors = On'; \
		echo 'error_log = /dev/stderr'; \
		echo 'log_errors_max_len = 1024'; \
		echo 'ignore_repeated_errors = On'; \
		echo 'ignore_repeated_source = Off'; \
		echo 'html_errors = Off'; \
	} > /usr/local/etc/php/conf.d/error-logging.ini
RUN \
    EXPECTED_SIGNATURE=$(curl -s https://composer.github.io/installer.sig) && \
    curl -o composer-setup.php https://getcomposer.org/installer && \
    ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');") && \
    if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]; then \
         >&2 echo 'ERROR: Invalid installer signature'; \
         rm composer-setup.php; \
         exit 1; \
    fi && \
    php composer-setup.php && \
    mv composer.phar /usr/local/bin/composer && \
    rm composer-setup.php

VOLUME /var/www/html

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY conf/supervisor/*.conf /etc/supervisor/conf.d/
RUN chmod +x /docker-entrypoint.sh

EXPOSE 80 443 9000
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/bin/supervisord", "-n"]
