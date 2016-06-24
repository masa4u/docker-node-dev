# masa4u/node-dev
#
# docker build -t masa4u/node-dev .
# VERSION 0.0.1

FROM node

MAINTAINER masa4u <masa4u@gmail.com>
WORKDIR /
ADD . /install
WORKDIR /install


RUN apt-get -y update & apt-get upgrade
RUN npm install -g gulp bower && rm -rf npm_cache /tmp/*
ENV NODE_PATH /usr/local/lib/node_modules/
#CMD true

ENTRYPOINT ["/bin/bash"]
