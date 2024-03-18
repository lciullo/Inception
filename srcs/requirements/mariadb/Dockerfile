#Penultimate version of debian
FROM debian:11.9

#Port to listen 
EXPOSE 3306

#Update and install mariadb
RUN apt update -y && apt upgrade -y && apt install mariadb-server -y

#Env config 
ARG SQL_DATABASE
ARG SQL_ROOT_PASSWORD
ARG SQL_ADMIN
ARG SQL_ADMINPASSWD
ARG SQL_USER
ARG SQL_USERPASSWD

#Move config file
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

#Launch mariadb
RUN service mariadb start && \
    mysql -u root -p$SQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};\
	CREATE USER IF NOT EXISTS ${SQL_ADMIN}@'localhost' IDENTIFIED BY '${SQL_ADMINPASSWD}';\
	GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO ${SQL_ADMIN}@'%' IDENTIFIED BY '${SQL_ADMINPASSWD}';\
	ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}'; \
	FLUSH PRIVILEGES;"

CMD ["mariadbd", "--bind_address=0.0.0.0"]