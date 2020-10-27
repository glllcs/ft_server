# Docker

## Theory

- `Container` is a process isolated from all the other processes on the host machine

- `Container image` provide the isolated filesystem when running a container. Contains everything needed to run an application - all dependencies, configuration, scripts, binaries, etc. Also contains other configuration for the container, such as enviornment variables, a default command to run, and other metadata.

- `Container volume` provides the ability to connect specific filesystem paths of the container back to the host machine

- `Container networking`. If two containers are on the same network, they can talk to each other. In general, each container should do one thing and do it well. Why networking?
	- scale APIs and front-ends differently than databases
	- separate containers let you version and update versions in isolation
	- while you may use a container for the database locally, you may want to use a managed service for the datavase in production. You don't want to ship your database engine with your app then
	- running multiple processes will require a process manager, which adds complexity to container startup/shutdown


## Shell commands

```
docker build -t getting-started .
```
uses a Dockerfile to build a new container image
- `-t` tags the image - its human-readable name
- `.` position of the Dockerfile in the current directory


```
docker rmi -f $(docker images -a -q)
```
removes all images

```
docker run -d -p 80:80 docker/getting-started
```
runs the application

- `-d` run the cointainer in detached mode (in the background)
- `-p 80:80` map port 80 of the host to port 80 in the container
- `docker/getting-started` the image to use

```
docker ps
```
lists all containers in use

```
docker stop <the-container-id>
```
stops a container, befor remove it

```
docker rm <the-container-id>
```
removes a container, and the port can me used again

```
docker rm -f <the-container-id>
```
forces a container to remove, without stoping it before

```
docker rm -f $(docker ps -a -q)
```
delete all containers

```
docker login -u USER-NAME
```
```
docker tag SOURCE-IMAGE USER-NAME/TARGET-IMAGE 
```
create a tag TARGET-IMAGE  that refers to SOURCE-IMAGE

```
docker push YOUR-USER-NAME/TARGET-IMAGE
```

```
docker exec <container-id> <command>
```
run a command in a running container

```
docker run -dp 3000:3000 \
    -w /app -v "$(pwd):/app" \
    node:12-alpine \
    sh -c "yarn install && yarn run dev"
```
- `-w /app` sets the "working directory" or the current directory that the command will run from
- `-v "$(pwd):/app"` bind mount the current directory from the host in the container into the `/app` directory
- `node:12-alpine` the image to use. Note that this is the base image for our app from the Dockerfile
- `sh -c "yarn install && yarn run dev" the command

```
docker logs -f <container-id>
```

```
docker run -d \
    --network todo-app --network-alias mysql \
    -v todo-mysql-data:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=secret \
    -e MYSQL_DATABASE=todos \
    mysql:5.7
```
starts a MySQL container and attach it in the network and defines a few environment variables that the database will use to initialize the database

## Dockerfile

`FROM {image}` image where the builder starts, if it doens't exists, it will be downloaded

`RUN yarn install --production` installs application's dependencies

`CMD` specifies the defacult command to run when starting a container from this image

## References

https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mariadb-php-lemp-stack-on-debian-10


