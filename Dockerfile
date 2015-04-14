# Oracle JRE 7 Dockerfile based on minimal Debian Jessie

# Pull base image
FROM identakid/debian:latest

# Install Java
RUN \
  apt-get update && \
  apt-get install -y openjdk-7-jre && \
  rm -rf /var/lib/apt/lists/*
