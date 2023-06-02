.PHONY := clean gen-models gen-templates run

clean:
	docker compose down
	rm -rf ./generated

gen-models:
	docker compose --profile models up -d
	docker compose --profile models logs -f

gen-templates:
	docker compose --profile templates up -d
	docker compose --profile templates logs -f

run:
	docker compose up -d
