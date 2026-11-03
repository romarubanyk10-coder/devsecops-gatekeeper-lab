# Pinned by digest to python:3.8-slim, so this always resolves to the same
# old, unpatched package set — Trivy always finds the same 4 CRITICAL,
# fixable CVEs, no matter when this demo is run.
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

RUN useradd --create-home --shell /usr/sbin/nologin appuser

USER appuser

CMD ["python", "app.py"]
