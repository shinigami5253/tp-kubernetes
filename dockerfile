# syntax=docker/dockerfile:1.4
FROM python:3.12-alpine AS builder

WORKDIR .\

COPY motd-api.py .\

RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install flask

ENTRYPOINT ["python3"]
CMD ["motd-api.py"]