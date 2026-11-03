# Pinned by digest to python:3.8-slim, so this always resolves to the same
# old, unpatched package set — Trivy always finds the same 4 CRITICAL,
# fixable CVEs, no matter when this demo is run.
# VULNERABLE: Intentionally outdated Python image for security testing
FROM python:3.6

CMD ["python", "--version"]
