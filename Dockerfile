FROM ubuntu:16.04
MAINTAINER Michael Benz <michael@benz.io>

# Install Python, Nodejs, gulp
RUN \
  apt-get update && \
  apt-get install -y curl && \
  curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
  bash nodesource_setup.sh && \
  apt-get install -y python python-dev python-pip python-virtualenv git build-essential nodejs && \
  rm -rf /var/lib/apt/lists/* && \

# Install Nodejs, npm, and Gulp
  npm install -g gulp && \
  rm nodesource_setup.sh && \
  rm -rf /root/.npm/cache/*