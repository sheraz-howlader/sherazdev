setup:
	@make build
	@make up 
	@make composer-update
	@make permissions

build:
	docker-compose up --build -d
	
build_force:
	docker-compose build --no-cache --force-rm

stop:
	docker-compose stop

up:
	docker-compose up -d

composer-update:
	docker exec sherazdev bash -c "composer update"

db_seed:
	docker exec sherazdev bash -c "php artisan migrate"
	docker exec sherazdev bash -c "php artisan db:seed"

permissions:
	docker exec sherazdev bash -c "chmod -R 777 storage"

