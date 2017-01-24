#!/usr/bin/env bash

# 1.
# `-d` runs the docker in daemon mode
# `-p` is for `port` - <localhost port>:<container port>
# run creates a new instance of container everytime
# `nginx` is the image
###
# docker run -d -p 3000:80 nginx
###

# 2.
# `ps` is for running processes
# `-a` is for all processes (including running processes)
###
# docker ps -a
###

# 3.
# `stop` to stop a container
# `89jghdfdfl3` is the container id
###
# docker stop 89jghdfdfl3
###

# 4.
# `rm` to delete a container
###
# docker rm 89jghdfdfl3
###


# 5.
# `images` will list down all the docker images
###
# docker images
###

# 6.
# `rmi` to delete a docker image
# `nginx` is the image name
###
# docker rmi nginx
###


# 7.
# `--name` is to define custom container name
# `hafeez-web-server` is is the custom container name
# `nginx` is the image
###
# docker run -d -p 7777:80 --name hafeez-web-server nginx
###
