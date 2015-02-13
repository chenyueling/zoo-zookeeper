FROM zooniverse/java

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y zookeeper supervisor && \
    apt-get clean

ADD start.sh /
ADD supervisor.conf /etc/supervisor/conf.d/zookeeper.conf

EXPOSE 2888 3888 2181

ENTRYPOINT [ "/start.sh" ]
