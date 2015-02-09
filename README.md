# Base docker image for node apps
Designed to be very lightweight to reduce image size
contains:
- system packages: git, openssh, wget, bzip2, curl
- node
- gulp
- bower

# build it locally 
```
docker build -t trunk-node-base .
```
