FROM jenkins:latest

MAINTAINER vSense <docker@vsense.fr>

USER root

RUN curl -sSL https://get.docker.com/ubuntu/ | sh && \
    rm -rf /var/lib/apt/lists/*

ENV DOCKER_HOST tcp://dind.service.consul:4242
