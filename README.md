ML-Docker-Orchestrator with Full MLops Pipeline

A containerized machine learning deployment pipeline using **PyTorch**, **Docker Compose**, **Kubernetes**, **Terraform**, **Ansible**, **Apache Kafka**, and **Snowflake**.
https://codecov.io/gh/Trojan3877/ML-Docker-Orchestrator/branch/main/graph/badge.svg
![Coverage](https://codecov.io/gh/Trojan3877/<REPO>/branch/main/graph/badge.svg)
# ML Docker Orchestrator (Full MLOps Pipeline)

![CI](https://github.com/Trojan3877/ML-Docker-Orchestrator-with-full-MLops-pipeline/actions/workflows/ci.yml/badge.svg)
![Security](https://github.com/Trojan3877/ML-Docker-Orchestrator-with-full-MLops-pipeline/actions/workflows/security.yml/badge.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)
![FastAPI](https://img.shields.io/badge/FastAPI-API-brightgreen.svg)
![Docker](https://img.shields.io/badge/Docker-Containerization-blue.svg)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Deployment-blue.svg)
![MLflow](https://img.shields.io/badge/MLflow-Tracking%2FRegistry-orange.svg)
![Prometheus](https://img.shields.io/badge/Prometheus-Metrics-red.svg)

A production-style ML inference orchestrator that demonstrates **end-to-end MLOps**:
- Training with **MLflow** metrics logging + model registry
- Serving with **FastAPI** and **structured JSON logs**
- **Docker** container build + **Kubernetes** deployment manifests (HPA included)
- **Prometheus** metrics endpoint (`/metrics`)
- CI/CD + security automation (lint/test, dependency checks)

---

## Architecture Flow

![image](https://github.com/user-attachments/assets/d9044d80-a9d7-42f7-8957-19bd2e9e9e77)



Quick Start (Local)
Option A: Docker Compose (recommended)
cp .env.example .env
docker compose -f infra/docker-compose.yml up --build

Test:

curl http://localhost:8080/health
bash scripts/smoke_test.sh
Option B: Python (no containers)
make setup
make run
Endpoints

GET /health → health check

POST /predict → predictions

GET /metrics → Prometheus metrics

Q1: What makes this “industry-grade”?

This repo includes the same pillars used in production ML systems: containerization, CI/CD automation, observability, security scanning, and deployable Kubernetes manifests. It demonstrates not just model training, but the operational lifecycle around ML.

Q2: How is the model versioned and promoted?

Training logs metrics and artifacts to MLflow. The serving service loads from the MLflow Registry using models:/<name>/<stage> which mirrors real promotion workflows (Staging → Production).

Q3: How does the API stay observable in production?

The service exposes Prometheus metrics at /metrics and uses structured JSON logs for easier parsing in centralized logging platforms. This enables SLO tracking and faster incident triage.

Q4: What would you add for “real production hardening”?

Authentication, rate limiting, request validation, offline batch scoring, drift monitoring, and automated rollback. A Helm chart plus environment-specific overlays would standardize deployment across clusters.

Q5: What’s the biggest scaling lever here?

Horizontal autoscaling with HPA handles traffic spikes, while model caching and efficient model loading reduce inference latency. In a real setting, you’d also add queue-based async inference for heavy workloads.

Q6: How would you evaluate this system end-to-end?

Unit tests validate API and config behavior, CI ensures consistent quality, smoke tests validate runtime behavior, and MLflow metrics quantify model performance. In production, you would add load tests and canary deploys.

Q7: Why FastAPI + MLflow?

FastAPI is lightweight and widely used for inference services. MLflow provides a standard approach to experiment tracking and model registry workflows that hiring teams recognize immediately.
