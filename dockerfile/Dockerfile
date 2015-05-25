# Ruby Dockerfile for tehran-docker meetup
# Pull base image.
from ubuntu:latest

RUN apt-get update
RUN apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev wget
RUN apt-get install libyaml-0-2 libyaml-0-2 libssl1.0.0 zlib1g ca-certificates

# Define working directory.
WORKDIR src

# installing bundler from Gem repositories
RUN gem install --no-rdoc --no-ri bundler
bundle install
#ENTRYPOINT bundle exec rackup
