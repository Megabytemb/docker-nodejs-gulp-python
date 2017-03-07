FROM ubuntu:16.04
MAINTAINER Michael Benz <michael@benz.io>

# Install Python, Nodejs, gulp
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv nodejs npm && \
  npm install -g gulp && \
  rm -rf /var/lib/apt/lists/*
