FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install procps -y && \
    apt-get clean

WORKDIR /app

COPY comet .

ENV PATH="/app:$PATH"
