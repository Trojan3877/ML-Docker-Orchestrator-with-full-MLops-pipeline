from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    app_env: str = "dev"
    log_level: str = "INFO"

    mlflow_tracking_uri: str = "http://localhost:5000"
    model_name: str = "orchestrator-model"
    model_stage: str = "Production"

    metrics_enabled: bool = True

    class Config:
        env_prefix = ""
        case_sensitive = False


settings = Settings()
