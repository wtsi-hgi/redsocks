# 
# redsocks Dockerfile
#
# https://github.com/wtsi-hgi/redsocks

FROM ubuntu:14.04
MAINTAINER "Joshua C. Randall" <jcrandall@alum.mit.edu>

# Install prerequisites 
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y iptables make gcc libevent-dev

# Install redsocks source from git tree
ADD . /docker
WORKDIR /docker

# Compile redsocks
RUN make

