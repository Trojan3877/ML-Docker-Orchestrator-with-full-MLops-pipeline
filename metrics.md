# Metrics

## Model metrics
- RMSE (logged during training via MLflow): `rmse`

## Service metrics (Prometheus)
- `http_requests_total{path,method,status}`: request volume
- `http_request_latency_seconds{path,method}`: request latency histogram

## Operational SLO examples
- **Availability:** 99.9% monthly
- **Latency (p95):** < 250ms for `/predict` (baseline target)
- **Error rate:** < 1% 5xx responses
