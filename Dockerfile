FROM ficusio/nodejs-base:0.12
MAINTAINER nagliyvred, yunspace

RUN apk --update add git nginx python && \
    rm -rf /var/cache/apk/* && \
    \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log && \
    \
    rm -f /etc/nginx/conf.d/default.conf

ADD nginx.conf /etc/nginx/nginx.conf
ADD nodejs.conf /etc/nginx/conf.d/nginx.conf

WORKDIR /opt
RUN npm install -g npm
RUN npm install -g --production bower gulp  && \
  npm cache clean
