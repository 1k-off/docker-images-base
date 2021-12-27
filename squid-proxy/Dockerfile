FROM alpine:3
LABEL maintainer="Bogdan Kosarevskyi <kosar@1node.xyz>"
EXPOSE 3128
RUN apk update && apk upgrade
# set timezone
RUN apk add tzdata && cp /usr/share/zoneinfo/Europe/Kiev /etc/localtime && apk del tzdata
# install Squid
RUN apk add squid
CMD ["sh", "-c", "squid --foreground -NYCd 1"]