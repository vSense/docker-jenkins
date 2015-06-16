FROM jenkins:latest

MAINTAINER vSense <docker@vsense.fr>

USER root

RUN curl -sSL https://get.docker.com/ubuntu/ | sh && \
    rm -rf /var/lib/apt/lists/*

COPY fleetctl /usr/bin/fleectl
COPY jenkins.key /root/.ssh/ida_rsa
COPY jenkins.key /var/jenkins_home/.ssh/id_rsa

ENV DOCKER_HOST tcp://dind.service.consul:4242
ENV FLEETCTL_TUNNEL 10.0.10.51
