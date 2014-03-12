default['java']['version'] = 6

default['zookeeper']['version'] = "3.3.6"
default['zookeeper']['mirror'] = "http://mirrors.ibiblio.org/apache/zookeeper/zookeeper-3.3.6/zookeeper-3.3.6.tar.gz"
default['zookeeper']['checksum'] = "ea119527974f202c70e463eab28c7a8eeb68bf57" 
default['zookeeper']['cluster'] = [
  "zk1.zooniverse.org",
  "zk2.zooniverse.org",
  "zk3.zooniverse.org"
]
