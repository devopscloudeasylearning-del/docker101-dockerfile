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
1. docker build -t <name> .: Build an image from a Dockerfile.
2. docker images: List local images.
3. docker image prune: Remove unused images
4. docker rmi <image>: Remove an image.
5. docker tag <source> <target>: Creates a new tag for a local image (useful before pushing).
6. docker push <image>: Uploads a local image to a registry (Docker Hub).
7. docker image prune:	Removes all dangling (untagged and unreferenced) images.

Containers:
-----------

1. docker run <image> <command>: Create and start a container. (-it for interactive, -d for detached, -p for port mapping, --name to name it).
2. docker ps / docker ps -a: List running / all containers.
3. docker logs -f <container_name>: Fetch & follow logs of a container
4. docker inspect <container>: inspect a running container
5. docker start <container>: Starts one or more stopped containers.
6. docker restart <container>: Stops and then starts a container.
7. docker stop <container>: Stop a running container.
8. docker rm <container>: Remove a container.
9. docker container stats: view resource usage stats of running container
10. docker exec -it <container> <cmd>: Executes a command (like /bin/bash) inside a running container.
11. docker system prune: Removes all unused containers, networks, dangling images, and build cache.
12. docker container prune:	Removes all stopped containers.

