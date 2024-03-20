#Penultimate version of debian
FROM debian:11.9

#Port to listen 
EXPOSE 9000

#Install wp 
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y wget

#Install dependancies 
RUN apt-get install -y php7.4 php-fpm php-mysql mariadb-client

#Create directories 
RUN mkdir -p /var/www/html/ && chown -R root:root /var/www/html


#Install wp-cli 
RUN wget https://github.com/wp-cli/wp-cli-bundle/releases/download/v2.7.0/wp-cli-2.7.0.phar
RUN chmod +x wp-cli-2.7.0.phar 
RUN mv wp-cli-2.7.0.phar /usr/local/bin/wp 

#Config file 
COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY conf/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

#Launch wordpress 
CMD ["./usr/local/bin/script.sh"]