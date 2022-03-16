FROM kosar/php-fpm:7.4
LABEL maintainer="bogdan.kosarevskyi@gmail.com"
ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install -y -o Dpkg::Options::="--force-confold" php7.4-apcu php7.4-ldap && \
    apt install -y --no-install-recommends supervisor cron nginx curl tar; rm -rf /var/lib/apt/lists/*;

WORKDIR /tmp
RUN version="$(curl --silent "https://api.github.com/repos/glpi-project/glpi/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')" && \
    curl -L "https://github.com/glpi-project/glpi/releases/download/$version/glpi-$version.tgz" -o ./glpi-$version.tgz && \
    tar xzvf ./glpi-$version.tgz && \
    rm ./glpi-$version.tgz && \
    mv ./glpi /var/www/glpi && \
    chown -R www-data:www-data /var/www/glpi

COPY conf/nginx.conf /etc/nginx/sites-available/default
COPY conf/supervisor/*.conf /etc/supervisor/conf.d/
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

VOLUME /var/www/html
EXPOSE 80 443
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/bin/supervisord", "-n"]

