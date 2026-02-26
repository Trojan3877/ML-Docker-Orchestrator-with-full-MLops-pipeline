#!/usr/bin/env bash
set -euo pipefail
uvicorn orchestrator.api:app --host 0.0.0.0 --port 8080
