# config Nginx
mkdir -p /var/www/localhost
mv /temp/nginx.conf /etc/nginx/sites-available/localhost
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
mv /temp/autoindex.sh /root/

# configure php
cd temp
tar -xzvf phpMyAdmin-5.0.1-english.tar.gz
rm -rf phpMyAdmin-5.0.1-english.tar.gz
mv config.inc.php phpMyAdmin-5.0.1-english
mv -f phpMyAdmin-5.0.1-english /var/www/localhost/phpmyadmin

# juntar WordPress package
tar -xzvf wordpress-5.5.1-pt_BR.tar.gz
rm wordpress-5.5.1-pt_BR.tar.gz
mv wp-config.php wordpress
mv -f wordpress /var/www/localhost/wordpress

# config MariaDB
service mysql start
mariadb
echo "CREATE DATABASE db_user42;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON db_user42.* TO 'user42'@'localhost' IDENTIFIED BY 'user42' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
echo "UPDATE mysql.user SET plugin='' WHERE user='root';"

echo "exit"

# SSL Certificate setting
apt-get install openssl
openssl req -newkey rsa:4096 \
            -x509 \
            -sha256 \
            -days 3650 \
            -nodes \
            -out nginx-selfsigned.crt \
            -keyout nginx-selfsigned.key \
            -subj "/C=BR/ST=SP/L=Sao Paulo/O=42/OU=42sp/CN=localhost/emailAddress=lambrozi@student.42sp.org"
mv nginx-selfsigned* /etc/ssl/
