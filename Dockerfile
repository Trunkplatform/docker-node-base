FROM debian:wheezy

ENV PATH /opt/node-v0.10.36-linux-x64/bin:$PATH

RUN apt-get update && \
    apt-get -y install wget openssh-client --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN wget -O - http://nodejs.org/dist/v0.10.36/node-v0.10.36-linux-x64.tar.gz | tar zxf -
RUN npm install gulp -g

