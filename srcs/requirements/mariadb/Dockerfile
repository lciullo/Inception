#Penultimate version of debian
FROM debian:11.9

#Port to listen 
EXPOSE 3306

#Update and install mariadb
RUN apt update -y && apt upgrade -y && apt install mariadb-server -y

#Mysql config
ARG SQL_DATABASE
ARG SQL_ROOT_PASS
ARG SQL_ADMIN
ARG SQL_ADMIN_PASS

#Move config file
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

#Create user
RUN service mariadb start && \
    mysql -u root -p$SQL_ROOT_PASS -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};\
	CREATE USER IF NOT EXISTS ${SQL_ADMIN}@'localhost' IDENTIFIED BY '${SQL_ADMIN_PASS}';\
	GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO ${SQL_ADMIN}@'%' IDENTIFIED BY '${SQL_ADMIN_PASS}';\
	ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASS}'; \
	FLUSH PRIVILEGES;"

#Launch mariadb
CMD ["mariadbd", "--bind_address=0.0.0.0"]