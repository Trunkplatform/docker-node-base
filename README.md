[![Docker Repository on Quay.io](https://quay.io/repository/trunk/docker-node-base/status "Docker Repository on Quay.io")](https://quay.io/repository/trunk/docker-node-base)

# Base docker image for node apps
Designed to be very lightweight to reduce image size
contains:
- system packages: git, openssh, wget, bzip2, curl
- node
- gulp
- bower

As of node 0.12.0, the following dependencies are also added:
- python
- build-essential

# build it locally 
```
docker build -t trunk-node-base .
```
