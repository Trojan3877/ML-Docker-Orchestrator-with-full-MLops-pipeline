.PHONY: setup lint format test run docker-build docker-run smoke

setup:
	python -m pip install -U pip
	pip install -r requirements.txt
	pip install -r requirements-dev.txt

lint:
	ruff check .
	mypy src || true

format:
	black .
	ruff check . --fix

test:
	pytest -q --disable-warnings --maxfail=1 --cov=src --cov-report=term-missing

run:
	uvicorn orchestrator.api:app --host 0.0.0.0 --port 8080

docker-build:
	docker build -t ml-docker-orchestrator:local .

docker-run:
	docker run --rm -p 8080:8080 --env-file .env.example ml-docker-orchestrator:local

smoke:
	bash scripts/smoke_test.sh
