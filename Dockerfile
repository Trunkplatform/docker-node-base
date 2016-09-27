FROM quay.io/trunk/alpine-node-kubernetes:5.12
MAINTAINER nagliyvred, yunspace

RUN apk --update add git nginx python && \
    rm -rf /var/cache/apk/* && \
    \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log && \
    \
    rm -f /etc/nginx/conf.d/default.conf

COPY rootfs /

WORKDIR /opt
