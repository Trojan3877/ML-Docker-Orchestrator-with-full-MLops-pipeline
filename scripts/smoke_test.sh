#!/usr/bin/env bash
set -euo pipefail
curl -s http://localhost:8080/health | jq .
curl -s -X POST http://localhost:8080/predict \
  -H "Content-Type: application/json" \
  -d '{"records":[{"f1":1.0,"f2":2.0,"f3":3.0}]}' | jq .
echo "Smoke test complete."
