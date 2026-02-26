#!/usr/bin/env bash
set -euo pipefail
export MLFLOW_TRACKING_URI=${MLFLOW_TRACKING_URI:-http://localhost:5000}
python -m orchestrator.pipeline.train
