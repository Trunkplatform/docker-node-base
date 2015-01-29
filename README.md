# Base docker image for node apps
Designed to be very lightweight to reduce image size
contains:
- system packages: git, openssh, wget
- node
- gulp
- bower

# build it locally 
```
docker build -t trunk-node-base .
```
