FROM ryanratcliff/java8
MAINTAINER Ryan Ratcliff <ryan.ratcliff@ryanratcliff.net>
ENV refreshed_at 2015-09-04

RUN wget -q -O - http://download.redis.io/releases/redis-3.0.3.tar.gz | tar -xzf - -C /opt
RUN mv /opt/redis-3.0.3 /opt/redis
WORKDIR /opt/redis
RUN apt-get update && apt-get install build-essential -y
RUN /usr/bin/make
ADD redis.conf /opt/redis/redis.conf
EXPOSE 6379
ENTRYPOINT ["/opt/redis/src/redis-server", "/opt/redis/redis.conf"]
