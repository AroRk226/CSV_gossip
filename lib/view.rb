require 'bundler'
Bundler.require

class View

attr_accessor :autor, :content

	def create_gossip
		puts ""
		puts "*** Saisir le nom de l'auteur ***".blue
		print "===> ".yellow
		@autor = gets.chomp

		puts "*** Saisir un gossip ***".blue
		print "===> ".yellow
		@content = gets.chomp

		return params = {autor: @autor, content: @content}
	end	
end
	