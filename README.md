Docker Demo Repository 🐳
This repository contains three demonstration Dockerfiles illustrating different ways to use ENTRYPOINT and CMD.


1. Dockerfile 
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

2. Dockerfile_cmd 
This Dockerfile contains only FROM, WORKDIR & CMD instructions

a. Build the Image
docker build -t cmddemo:v1 .

b. Run the Container
docker run -it cmddemo:v1

Output:
starts the bash screen (interactive shell)
# pwd
# /app

c. Override CMD instruction
docker run -it cmddemo:v1 echo 'Hello World.'

Output:
Hello World.


3. Dockerfile_entrypoint
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
# pwd
# /
