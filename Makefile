.PHONY: up down

up:
	docker-compose up -d --build

down:
	docker-compose down

TARGET=run
run:
	docker-compose run --rm ansible make $(TARGET)