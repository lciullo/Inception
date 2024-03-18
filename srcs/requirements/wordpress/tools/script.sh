#!bin/bash

if [ ! -f "/var/www/html/wp-config.php" ]; then

wp core download --path=/var/www/html --allow-root

wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_ADMIN --dbpass=$SQL_ADMINPASSWD --dbhost=mariadb:3306 --path=/var/www/html

wp core install  --allow-root --url=$DOMAIN_NAME --admin_user=$SQL_ADMIN --admin_password=$SQL_ADMINPASSWD  --admin_email=lciullo@student.42lyon.fr  --title=Inception --path=/var/www/html

wp user create   --allow-root $SQL_USER example@example.com --user_pass=$SQL_USERPASSWD --path=/var/www/html

fi
 
 
/usr/sbin/php-fpm7.4 -F
php-fpm7.4 -F