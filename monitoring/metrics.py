# monitoring/metrics.py

from prometheus_client import Counter, Histogram

REQUEST_COUNT = Counter(
    "ml_api_requests_total",
    "Total number of API requests"
)

PREDICTION_LATENCY = Histogram(
    "ml_prediction_latency_seconds",
    "Prediction latency in seconds"
)
