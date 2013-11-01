FROM ubuntu
MAINTAINER Spencer Herzberg "http://github.com/sherzberg/docker-graylog2"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y -q python-dev python-pip libevent-dev
RUN pip install flask gevent curdling

RUN mkdir -p /var/lib/wheelhouse

ADD run /usr/local/bin/run

EXPOSE 8000

CMD ["/bin/bash", "/usr/local/bin/run"]
