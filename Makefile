# # ---- Utils ---- #

# # ---- Directories ---- #

include srcs/.env

DOCKER_COMPOSE = srcs/docker-compose.yml

# # ---- Launch rules ---- #

all:
	mkdir -p /home/lciullo/data/mariadb
	mkdir -p /home/lciullo/data/wordpress
	docker compose -f ${DOCKER_COMPOSE} up -d --build

up: 
	docker compose -f ${DOCKER_COMPOSE} up -d

down:
	docker compose -f ${DOCKER_COMPOSE} down

# # ---- Clean rules ---- #

prune:
	docker compose -f ${DOCKER_COMPOSE} stop
	docker system prune -a;
	docker volume prune;

fclean:
	docker compose -f ${DOCKER_COMPOSE} down --rmi all -v --remove-orphans
	sudo rm -rf /home/lciullo/data/mariadb /home/lciullo/data/wordpress

re: fclean
	${MAKE} all

.PHONY: all fclean up down
