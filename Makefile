up:
	docker-compose up -d
build:
	docker-compose build --no-cache --force-rm
init:
	docker-compose up -d --build
remake:
	@make destroy
	@make init
stop:
	docker-compose stop
down:
	docker-compose down --remove-orphans
restart:
	@make down
	@make up
destroy:
	docker-compose down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker-compose down --volumes --remove-orphans
ps:
	docker-compose ps
logs:
	docker-compose logs
logs-watch:
	docker-compose logs --follow
log-app:
	docker-compose logs wordpress
log-app-watch:
	docker-compose logs --follow wordpress
log-db:
	docker-compose logs db
log-db-watch:
	docker-compose logs --follow db
app:
	docker-compose exec wordpress bash
