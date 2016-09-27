[![Docker Repository on Quay.io](https://quay.io/repository/trunk/docker-node-base/status "Docker Repository on Quay.io")](https://quay.io/repository/trunk/docker-node-base)

# Base docker image for node apps
Designed to be very lightweight using alpine-node-kubernetes base image.
- git
- node 
- nginx with base configuration
- nginx agent for newrelic
- [s6 process manager](http://skarnet.org/software/s6/) 

# build it locally
```
docker build -t trunk/node-base .
```
