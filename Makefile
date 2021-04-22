up:
	docker-compose up -d --build
.PHONY: up

down:
	docker-compose down
.PHONY: down

TARGET=dry-run
run:
	docker-compose run --rm ansible make $(TARGET)
.PHONY: run
