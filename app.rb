require 'bundler'
Bundler.require
require_relative 'lib/controller'
require_relative 'lib/router'
require_relative 'lib/gossip'
require_relative 'lib/view'
require_relative 'db/gossip.csv'


Router.new.perform