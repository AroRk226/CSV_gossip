require 'bundler'
Bundler.require
require_relative 'gossip'
require 'pry'
require_relative 'view'

class Controller

	attr_accessor :autor, :content

	def initialize
		@view = View.new
	end

	def create_gossip
		params = Hash.new
		params = @view.create_gossip
		@gossip = Gossip.new(params[:autor], params [:content])
		@gossip.save
	end

	def index_gossip
		CSV.foreach('../db/gossip.csv') do |csv|
		puts csv.inspect
	end
end

	def delete_gossip
		CSV.foreach('../db/gossip.csv') do |csv|
		puts csv.shift
	end
end

end