FROM ubuntu:quantal
MAINTAINER jgwmaxwell "john@musicglue.com"

RUN add-apt-repository -y ppa:chris-lea/redis-server
RUN apt-get update
RUN apt-get -y install redis-server

ADD . /bin
RUN chmod +x /bin/start_redis.sh
