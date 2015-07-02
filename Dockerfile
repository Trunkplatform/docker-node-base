FROM quay.io/yunspace/alphine-harp:0.17.0-squashed
MAINTAINER nagliyvred, yunspace

RUN apk --update add git && \
  rm -rf /var/cache/apk/* \

WORKDIR /opt
RUN npm install -g npm
RUN npm install -g --production bower gulp  && \
  npm cache clean
