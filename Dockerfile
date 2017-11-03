FROM quay.io/trunk/alpine-node-kubernetes:8.9.0
MAINTAINER nagliyvred, yunspace

RUN apk --update add git nginx python && \
    rm -rf /var/cache/apk/* && \
    \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log && \
    \
    rm -f /etc/nginx/conf.d/default.conf && \
    python -m ensurepip && pip install daemon-runner

COPY rootfs /

WORKDIR /opt
