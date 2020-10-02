# Docker

## Theory

- `Container` is a process isolated from all the other processes on the host machine

- `Container image` provide the isolated filesystem when running a container. Contains everything needed to run an application - all dependencies, configuration, scripts, binaries, etc. Also contains other configuration for the container, such as enviornment variables, a default command to run, and other metadata.

## Shell commands

```
docker build -t getting-started .
```
uses a Dockerfile to build a new container image

- `-t` tags the image - its human-readable name
- `.` position of the Dockerfile in the current directory

```
docker run -d -p 80:80 docker/getting-started
```
runs the application

- `-d` run the cointainer in detached mode (in the background)
- `-p 80:80` map port 80 of the host to port 80 in the container
- `docker/getting-started` the image to use

```
docker run -dp 3000:3000 getting-started
```


## Dockerfile

`FROM {image}` image where the builder starts, if it doens't exists, it will be downloaded

`RUN yarn install --production` installs application's dependencies

`CMD` specifies the defacult command to run when starting a container from this image

