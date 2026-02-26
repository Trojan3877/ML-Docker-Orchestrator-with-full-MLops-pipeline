# Architecture

This system is a production-style ML inference service:
- **Training:** local script logs model + metrics to MLflow
- **Registry:** model promoted to a stage (Production)
- **Serving:** FastAPI loads the Production model from MLflow registry
- **Observability:** Prometheus metrics + structured logs
- **Deployment:** Docker + Kubernetes manifests + HPA

See README for the full architecture diagram and flow.
