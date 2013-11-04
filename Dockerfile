FROM ubuntu:quantal
MAINTAINER jgwmaxwell "john@musicglue.com"

RUN echo "deb http://ppa.launchpad.net/chris-lea/redis-server/ubuntu raring main\ndeb-src http://ppa.launchpad.net/chris-lea/redis-server/ubuntu raring main" > /etc/apt/sources.list.d/redis.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C7917B12
RUN apt-get update
RUN apt-get -y install redis-server

ADD . /bin
RUN chmod +x /bin/start_redis.sh
