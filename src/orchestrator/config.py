# src/config.py

from pydantic import BaseSettings


class Settings(BaseSettings):
    APP_NAME: str = "ML Docker Orchestrator"
    ENVIRONMENT: str = "development"

    MODEL_PATH: str = "models/model.pkl"
    DATA_PATH: str = "data/"
    MLFLOW_TRACKING_URI: str = "http://localhost:5000"

    LOG_LEVEL: str = "INFO"
    ENABLE_PROMETHEUS: bool = True

    class Config:
        env_file = ".env"


settings = Settings()
