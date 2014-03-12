# encoding: utf-8

require 'bundler'
require 'bundler/setup'
require 'berkshelf/thor'

class Default < Thor
  
  desc 'install', "Installs cookbooks to cookbooks/"
  def install
  end

  desc 'up', "Installs depedencies and runs vagrant up"
  def up
    invoke :install
    `vagrant up`
  end
end
