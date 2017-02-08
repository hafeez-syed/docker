# Docker

![Docker logo](https://api.lyra-836.appcloud.swisscom.com/static-media/images/buildpack/docker-image.svg)

Install and configure Docker to run on your computer to work with Docker images, to create containers that run applications.

### 1.

+ `pull` downloads the image
+ `nginx` is the image for nginx server


```
$ docker pull nginx
```

---

### 2.

+ `-d` runs the docker in daemon mode
+ `-p` is for `port` - `<localhost port>`:`<container port>`
+ `run` creates a new instance of container everytime
+ `nginx` is the image


```
$ docker run -d -p 3000:80 nginx
```

---

### 3.

+ `ps` is for running processes
+ `-a` is an exrta flag to show all processes (including running processes)

```
$ docker ps -a
```
---


### 4.

+ `stop` to stop a container
+ `89jghdfdfl3` is the container id

```
$ docker stop 89jghdfdfl3
```
---


### 5.

+ `rm` to delete a container
+ `89jghdfdfl3` is the container id

```
$ docker rm 89jghdfdfl3
```
---

### 6.

+ `images` will list down all the docker images

```
$ docker images
```
---


### 7.

+ `rmi` to delete a docker image
+ `nginx` is the image name

```
$ docker rmi nginx
```
---

## To avoid running new instance of nginx container each time
---

### 8. 

We assign a custom name to the container

+ `--name` is to define custom container name
+ `hafeez-web-server` is is the custom container name
+ `nginx` is the image

```
$ docker run -d -p 7777:80 --name hafeez-web-server nginx
```

---


### 9. 

Instead of using `run` we use `start` to start the existing container
Note: `run` will create a new container instance each time

+ `start` is to start existing custom container instance created in the previous step
+ `hafeez-web-server` is the custom container name

```
$ docker start hafeez-web-server
```

---

### 10.

+ `stop` is to stop existing custom container instance
+ `hafeez-web-server` is the custom container name

```
$ docker stop hafeez-web-server
```

---

## To run community image from docker hub registry
---

### 11. 

Download oracle xe image

+ checkout the github [here](https://github.com/wnameless/docker-oracle-xe-11g)
+ also visit the dockerhub [registry](https://hub.docker.com/r/wnameless/oracle-xe-11g/) for detailed instructions

```
$ docker pull wnameless/oracle-xe-11g
```

---

### 12. 

+ run the following command to start the container from newly downloaded oracle-xe image
+ port mapping `49160:22` is for ssh connection
+ port mapping `49161:1521` is for connection to sql developer
+ download the sql developer from oracle website and enter the credentials provided in the instruction to see your database up and running

```
$ docker run -d -p 49160:22 -p 49161:1521 --name hafeez-oracle-xe wnameless/oracle-xe-11g
```

---

