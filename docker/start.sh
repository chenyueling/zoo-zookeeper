#!/bin/bash -ex

if [ "$MYID" == "auto" ]
then
    # Use the last octet of the IP address for the ID. You'll probably want
    # to start the container with --net=host and put all the nodes in the
    # same subnet.
    MYID=$(hostname -I | awk "-F " '{print$1}' | awk -F. '{print$4}')
fi

if [ ! -z "$MYID" ]
then
    echo $MYID > /etc/zookeeper/conf/myid
fi

if [ ! -e /var/lib/zookeeper/myid ] && [ -e /etc/zookeeper/conf/myid ]
then
    ln -s /var/lib/zookeeper/myid /etc/zookeeper/conf/myid
fi

exec /usr/bin/supervisord
