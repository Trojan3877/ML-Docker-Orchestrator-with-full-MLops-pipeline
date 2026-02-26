# Quick Start

## Local (Docker Compose)
1) `cp .env.example .env`
2) `docker compose -f infra/docker-compose.yml up --build`
3) `curl http://localhost:8080/health`
4) Run smoke test: `bash scripts/smoke_test.sh`

## Local (Python)
1) `make setup`
2) Start MLflow (optional): `docker run -p 5000:5000 ghcr.io/mlflow/mlflow:v2.10.0 mlflow server --host 0.0.0.0 --port 5000`
3) `make run`
