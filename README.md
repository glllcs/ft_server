# [ft_server](/others/subject.en.pdf)

The purpose of this project is to set up a web server in a Docker container.
It runs with debian buster and is setted up with Nginx. It runs Wordpress, phpMyAdmin and MariaDB with a SSL protocol.

## Requirements

To run the container, you must have Docker installed in your machine.

## Instalation

```
docker build -t LEMP .
docker run -it -p 80:80 -p 443:443 LEMP
```

# References

[LEMP](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mariadb-php-lemp-stack-on-debian-10) [LEMP2](https://www.binarytides.com/install-nginx-php-fpm-mariadb-debian/) [Nginx](http://nginx.org/en/docs/beginners_guide.html) [Nginx2](https://www.nginx.com/resources/wiki/start/topics/recipes/wordpress/) [SSL](https://linuxize.com/post/creating-a-self-signed-ssl-certificate/) [phpMyAdmin](https://www.itzgeek.com/how-tos/linux/debian/how-to-install-phpmyadmin-with-nginx-on-debian-10.html) [phpMyAdmin2](https://www.digitalocean.com/community/tutorials/how-to-install-phpmyadmin-from-source-debian-10)

![ft_server-universe](/others/ft_server.png)