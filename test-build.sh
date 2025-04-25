#!/bin/bash

docker build -t omakub-fedora . --no-cache
docker run -it omakub-fedora

# docker ps -a       # find the container ID if not using --rm
# docker commit <container-id> omakub-fedora-with-package
# docker run -it --rm omakub-fedora-with-package

