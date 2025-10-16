.PHONY: up rebuild down ingest
up:
	docker compose -f docker-compose-bypass.yml up -d
rebuild:
	docker compose -f docker-compose-bypass.yml build --no-cache && docker compose -f docker-compose-bypass.yml up -d
down:
	docker compose -f docker-compose-bypass.yml down -v
ingest:
	bash ./elastic/ingest_data.sh
