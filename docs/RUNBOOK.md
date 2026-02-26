# Runbook

## Common issues
- **/predict returns 500**: MLflow registry not reachable or model not registered in Production stage.
- **Metrics missing**: set `METRICS_ENABLED=true` and confirm `/metrics` endpoint.

## Operational checks
- Health: `/health`
- Metrics: `/metrics`
- Logs: structured JSON on stdout (container logs)
