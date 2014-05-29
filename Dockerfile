FROM stackbrew/ubuntu:14.04
MAINTAINER Spencer Herzberg "http://github.com/sherzberg/docker-curdserver"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y -q python-dev python-pip libevent-dev
RUN pip install flask gevent curdling

RUN mkdir -p /var/lib/wheelhouse

EXPOSE 8000
CMD ["curd-server", "/var/lib/wheelhouse"]
