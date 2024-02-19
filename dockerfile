# syntax=docker/dockerfile:1.4
FROM python:3.12-alpine AS builder

WORKDIR .\TPK8S

COPY motd-api.py ./TPK8S

RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install flask

ENTRYPOINT ["python3"]
CMD ["motd-api.py"]