.PHONY := apps clean gen-models gen-templates run

clean:
	docker compose down --remove-orphans
	rm -rf ./generated/
	rm -f ./docker-compose.override.yml

run:
	docker compose up -d

gen-models:
	docker compose --profile models up -d

gen-templates:
	docker compose --profile templates up -d

apps:
	docker compose --profile apps up -d
