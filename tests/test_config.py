from orchestrator.config import settings

def test_settings_defaults():
    assert settings.model_name
    assert settings.model_stage
