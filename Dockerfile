FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src/
ENV PYTHONPATH=/app/src

EXPOSE 8080
CMD ["uvicorn", "orchestrator.api:app", "--host", "0.0.0.0", "--port", "8080"]
