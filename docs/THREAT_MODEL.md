# Threat Model (High Level)

## Threats
- Model endpoint abuse (DoS)
- Data leakage via logs
- Supply chain risk via dependencies
- Secrets exposure in repo

## Controls
- NetworkPolicy + least privilege in k8s
- Secrets in Kubernetes Secret / GH Actions Secrets
- Dependabot + pip-audit + bandit
- Structured logging without sensitive fields
