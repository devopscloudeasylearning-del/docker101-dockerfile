DockerFile Demo 🐳
------------------

This repository contains three demonstration Dockerfiles illustrating different ways to use ENTRYPOINT and CMD.


**1. Dockerfile**
This Dockerfile defines common instructions to build an image. 

a. Build the Image
docker build -t demo:v1 .

b. Run the Container
docker run -it demo:v1

Output:
--- Starting Container Process ---
Container is running...
Demo complete.
Container Exiting.


**2. Dockerfile_cmd**
This Dockerfile contains only FROM, WORKDIR & CMD instructions

a. Build the Image
docker build -t cmddemo:v1 .

b. Run the Container
docker run -it cmddemo:v1

Output:
starts the bash screen (interactive shell)

c. Override CMD instruction
docker run -it cmddemo:v1 echo 'Hello World.'

Output:
Hello World.


**3. Dockerfile_entrypoint**
This Dockerfile contains only FROM & ENTRYPOINT instructions

a. Build the Image
docker build -t entrypointdemo:v1 .

b. Run the Container
docker run -it entrypointdemo:v1 localhost

Output:
Response of ping:
PING localhost (127.0.0.1): 56 data bytes
64 bytes from 127.0.0.1: icmp_seq=0 ttl=64 time=0.068 ms
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.136 ms
64 bytes from 127.0.0.1: icmp_seq=2 ttl=64 time=0.140 ms
64 bytes from 127.0.0.1: icmp_seq=3 ttl=64 time=0.140 ms
--- localhost ping statistics ---

c. Override ENTRYPOINT instruction
docker run -it --entrypoint="/bin/sh" entrypointdemo:v1

Output:
starts the bash screen (interactive shell)

--------------

Important Docker CLIs:

docker info	Displays system-wide information about Docker installation.

Docker Hub:
-----------
1. docker pull <image>: Download an image.

Images:
-------
docker build -t <name> .: Build an image from a Dockerfile.
docker images: List local images.
docker image prune: Remove unused images
docker rmi <image>: Remove an image.
docker tag <source> <target>: Creates a new tag for a local image (useful before pushing).
docker push <image>: Uploads a local image to a registry (Docker Hub).
docker image prune:	Removes all dangling (untagged and unreferenced) images.

Containers:
-----------

docker run <image> <command>: Create and start a container. (-it for interactive, -d for detached, -p for port mapping, --name to name it).
docker ps / docker ps -a: List running / all containers.
docker logs -f <container_name>: Fetch & follow logs of a container
docker inspect <container>: inspect a running container
docker start <container>: Starts one or more stopped containers.
docker restart <container>: Stops and then starts a container.
docker stop <container>: Stop a running container.
docker rm <container>: Remove a container.
docker container stats: view resource usage stats of running container
docker exec -it <container> <cmd>: Executes a command (like /bin/bash) inside a running container.
docker system prune: Removes all unused containers, networks, dangling images, and build cache.
docker container prune:	Removes all stopped containers.

