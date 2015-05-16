# Ruby Dockerfile for tehran-docker meetup
# Pull base image.
from ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev wget
RUN apt-get install libyaml-0-2 libyaml-0-2 libssl1.0.0 zlib1g ca-certificates
# Install Ruby.
RUN \
  apt-get update && \
  apt-get install -y ruby ruby-dev ruby-bundler && \
  rm -rf /var/lib/apt/lists/*

ADD src src

# Define working directory.
WORKDIR src

# installing bundler from Gem repositories
RUN gem install --no-rdoc --no-ri bundler

# Cleaning up build materials
RUN apt-get remove -y build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev wget
RUN apt-get autoremove -y
bundle install
#ENTRYPOINT bundle exec rackup
