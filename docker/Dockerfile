FROM ubuntu:14.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y zookeeper

EXPOSE 2888 3888 2181

ENTRYPOINT /usr/share/zookeeper/bin/zkServer.sh start-foreground
