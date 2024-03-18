#Penultimate version of debian
FROM debian:11.9

#Port to listen 
EXPOSE 443

#Update and install nginx
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y nginx

#OpenSSL config
RUN mkdir -p /etc/nginx/ssl
RUN apt-get install -y openssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/CN=lciullo.42.fr"

#Config file
RUN mkdir -p /var/run/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

#Launch nginx
CMD ["nginx", "-g", "daemon off;"]
