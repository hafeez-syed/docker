# Docker

![Docker logo](https://api.lyra-836.appcloud.swisscom.com/static-media/images/buildpack/docker-image.svg)

Install and configure Docker to run on your computer to work with Docker images, to create containers that run applications.

### 1.

+ `pull` downloads the image
+ `nginx` is the image for nginx server

# Downloading nginx image


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

## Downloading Oracle xe image

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

### 13. 

## Downloading Rabbitmq (with management plugin)

+ checkout dockerhub rabbitmq [registry](https://hub.docker.com/_/rabbitmq/) and [tags](https://hub.docker.com/r/library/rabbitmq/tags/) section for detailed instructions

```
$ docker pull rabbitmq:3.6.6-management
```

---


### 14. 


+ notice a new flag i.e `--hostname` is to define the hostname to the container
+ `my-rabbit` is the hostname provide to Rabbitmq

```
$ docker run -d -p 15672:15672 --hostname my-rabbit --name hafeez-some-rabbit rabbitmq:3.6.6-management
```

---

### 15. 


+ flag i.e `-e` is to define environment variables
+ I have define environment variabels for `RABBITMQ_DEFAULT_USER`, `RABBITMQ_DEFAULT_PASS` and `RABBITMQ_DEFAULT_VHOST`

```
$ docker run -d -p 15672:15672 --hostname my-rabbit --name hafeez-some-rabbit -e RABBITMQ_DEFAULT_USER=hafeez -e RABBITMQ_DEFAULT_PASS=hafeez -e RABBITMQ_DEFAULT_VHOST=my_vhost rabbitmq:3.6.6-management
```

---

### 16. 


+ `logs` will all output the infol related to the container

```
$ docker logs hafeez-some-rabbit

```

---

### 17. 

## Downloading mongodb image from dockerhub


```
$ docker pull mongo

```

---

### 18. 

+ flag `-v` is for mounting the volume
+ `/Workspace/mongo/data/db` is physical space this machine (don't forget to add this path to docker preference -> file sharing) whereas
+ `/data/db` is the location inside docker
+ `7017` is the port mongodb is running on this machine whereas `27017` is docker's port

Note: only define `port -p` and `volume -v` when ports and locations are different otherwise docker wont start

```
$ docker run -d -p 7017:27017 --name hafeez-mongo -v /Workspace/mongo/data/db:/data/db mongo:latest

```

---

## To execute / access docker container
---

### 19. 


+ `-i` flag is for interactive mode
+ `-t` flag is for terminal mode
+ exec command will let you access the container inside

```
$ docker exec -it custom-container-name image-name
```

---




