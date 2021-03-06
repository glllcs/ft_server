FROM debian:buster
LABEL maintainer="lambrozi@student.42sp.org.br"

COPY /srcs /temp

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y wget \
		nginx \
		mariadb-server \
		php7.3 \
		php-mysql \
		php-fpm \
		php-pdo \
		php-gd \
		php-cli \
		php-mbstring

RUN bash /temp/server-config.sh

ENTRYPOINT bash /temp/start.sh

CMD tail -f /dev/null
