FROM python:3.13-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# TODO: Layer de dependências
# COPY pyproject.toml uv.lock ./
# RUN pip install uv && uv sync --frozen

# TODO: Layer do app
# COPY app/ ./app/

EXPOSE 8000

CMD ["python", "app/crawler-api/main.py"]

