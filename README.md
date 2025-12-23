# 🚀 ML-Docker-Orchestrator with Full MLops Pipeline

A containerized machine learning deployment pipeline using **PyTorch**, **Docker Compose**, **Kubernetes**, **Terraform**, **Ansible**, **Apache Kafka**, and **Snowflake**.
https://codecov.io/gh/Trojan3877/ML-Docker-Orchestrator/branch/main/graph/badge.svg
![Coverage](https://codecov.io/gh/Trojan3877/<REPO>/branch/main/graph/badge.svg)


![Docker](https://img.shields.io/badge/Containerized-Docker-informational)
![Kubernetes](https://img.shields.io/badge/Orchestrator-Kubernetes-blue)
![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-success)
![ML-Framework](https://img.shields.io/badge/Framework-PyTorch-red)
![IaC](https://img.shields.io/badge/Infrastructure-Terraform-purple)
![Provisioning](https://img.shields.io/badge/Provisioning-Ansible-yellow)
![Streaming](https://img.shields.io/badge/Streaming-Apache_Kafka-orange)
![DataWarehouse](https://img.shields.io/badge/Data-Snowflake-lightblue)
![License](https://img.shields.io/badge/License-MIT-green)
[![Deploy to Render](https://img.shields.io/badge/Deploy-Render-blueviolet.svg)](https://render.com)

[![Build](https://github.com/Trojan3877/ML-Docker-Orchestrator-with-full-MLops-pipeline/actions/workflows/ci.yml/badge.svg)](...)
[![Deploy](https://img.shields.io/badge/Deployed%20On-Render-blueviolet.svg)](https://render.com)
[![Uptime Status](https://img.shields.io/uptimerobot/status/m796123456-abcdef1234567890.svg)](https://uptimerobot.com)
[![Uptime](https://img.shields.io/uptimerobot/ratio/m796123456-abcdef1234567890.svg)](https://uptimerobot.com)
---
🌐 Live API: https://<ML-DOCKER-ORCHESTRATOR.onrender.com
## 🧠 Architecture Flowchart

![image](https://github.com/user-attachments/assets/d9044d80-a9d7-42f7-8957-19bd2e9e9e77)



---
## 🚀 Quickstart — Run the Full MLOps Pipeline Locally

Get the complete ML Docker orchestration and MLOps pipeline running on your machine in just a few minutes.

This Quickstart will help you:
- Clone the repo
- Configure environment variables
- Build and run all services with Docker
- Verify the ML API is live
- Run basic tests

---
## 🌐 Live Demo (Deployed on Render)

The ML API is deployed live using **Render** and can be accessed publicly for demo and testing.

🔗 **Base URL:**  
https://<your-app-name>.onrender.com

[![Deploy](https://img.shields.io/badge/Deployed%20On-Render-blueviolet.svg)](https://render.com)

---

### ❤️ Health Check

Verify the service is running:

```bash
curl https://ML-DOCKER-ORCHESTRATOR.onrender.com/health
### 📌 Prerequisites

Make sure you have the following installed:

- **Git**
- **Docker** (v20+)
- **Docker Compose** (v2+)
- **Python 3.8+** (for local scripts/tests)
- **pip**

Optional (for Kubernetes mode):
- **kubectl**
- **minikube** or **kind**

Check versions:

```bash
docker --version
docker compose version
python --version
Clone the Repository

Bash
git clone https://github.com/Trojan3877/ML-Docker-Orchestrator-with-full-MLops-pipeline.git
cd ML-Docker-Orchestrator-with-full-MLops-pipeline
⚙️ 2️⃣ Configure Environment
Create your environment file:
Bash
cp .env.example .env
Edit .env and adjust as needed:
Env
API_PORT=8000
MODEL_NAME=baseline_model
ENV=dev
Build & Launch with Docker Compose
Spin up the full local stack:
Bash
docker compose up --build
Verify the ML API
Once running, open another terminal and check:
Bash
curl http://localhost:8000/health
Expected output:
Json
{"status": "ok"}
You can also open in browser:

http://localhost:8000/docs
to see the FastAPI Swagger UI.
Run Tests
Run unit/integration tests locally:
Bash
pytest
Or inside the API container:
Bash
docker compose exec api pytest
 Check Running Services

Bash
docker compose ps
View logs:
Bash
docker compose logs -f
Stop the Stack
Bash
docker compose down
To remove volumes too:
Bash
docker compose down -v
## 📂 Project Structure

```plaintext
ML-Docker-Orchestrator/
├── model/train.py
├── app/main.py
├── docker/
│   ├── Dockerfile
│   └── docker-compose.yml
├── k8s/deployment.yaml
├── terraform/main.tf
├── ansible/provision.yml
├── snowflake/connect_snowflake.py
├── apache/stream_data.py
├── tests/test_api.py
├── notebooks/eda_snowflake_data.ipynb
├── .github/workflows/ci.yml
├── Makefile
├── requirements.txt
├── .env.example
├── CONTRIBUTING.md
├── CHANGELOG.md
├── README.md
└── visual_flowchart.png
