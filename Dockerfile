FROM debian:buster
LABEL maintainer="lambrozi@student.42sp.org.br"

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y wget \
	nginx \
	mariadb-server \
	php7.3 \
