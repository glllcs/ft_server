
# juntar WordPress package
cd temp
tar -xzvf wordpress-5.5.1-pt_BR.tar.gz

# delete tar file
rm wordpress-5.5.1-pt_BR.tar.gz

# copy config file to WordPress folder
mv wp-config.php ./wordpress/
mv wordpress /var/www/localhost/wordpress/

# config Nginx

# config MariaDB
service mysql start
mariadb
echo "CREATE DATABASE db_user42;" | mysql -u root --skip-password
echo "GRANT ALL ON db_user42.* TO 'user42'@'localhost' IDENTIFIED BY 'user42' WITH GRANT OPTION;" | mysql -u root --skip-password

echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
echo "SHOW DATABASES;" | mysql -u root --skip-password
echo "exit"
