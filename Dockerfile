FROM alpine


LABEL maintainer="zerokey@gmail.com"

RUN apk add squid apache2-utils

COPY entrypoint.sh /sbin/entrypoint.sh

RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 22999/tcp

ENTRYPOINT ["/sbin/entrypoint.sh"]


