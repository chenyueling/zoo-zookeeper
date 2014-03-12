#
# Cookbook Name:: zoo-zookeeper
# Recipe:: ec2 
#
# Copyright 2014, Zooniverse
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.default['zookeeper']['data_device'] = '/dev/xvdf'
node.default['zookeeper']['data_log_device'] = '/dev/xvdg'

include_recipe "aws"

aws_ebs_volume "zoo_data" do
  size 40
  device node['zookeeper']['data_device']
  volume_type "io1"
  piops 250
end

aws_ebs_volume "zoo_log" do
  size 40
  device node['zookeeper']['data_log_device']
  volume_type "io1"
  piops 250
end

include_recipe "zoo-zookeeper::default"
