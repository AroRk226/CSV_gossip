require 'bundler'
Bundler.require
require_relative 'controller'
require 'pry'
require 'colorize'

class Router

def initialize
	@controller = Controller.new
end

def perform
	puts ""
	puts "YO !! BIENVENUE DANS THE GOSSIP PROJECT "
	puts ""

	while true

		puts "|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|".red
		puts "|***** Tu veux faire quoi jeune mouss' ? *****|".green
		puts "|_____________________________________________|".red
		puts ""
		puts "1. Je veux créer un gpssip".red
		puts "2. Je veux voir la liste de potins".green
		puts "3. Je veux supprimer un potin".yellow
		puts "4. Je veux quitter l'app".blue
		puts ""
		print "===>".yellow
		choice = gets.chomp.to_i

		case choice
			when 1
			puts ""
			puts "Vous allez créer un gossip".red
			@controller.create_gossip

			when 2
			puts ""
			puts "voici la liste des potins"
			puts @controller.index_gossip

			when 3
			puts ""
			puts "Vous supprimez un potin"
			puts @controller.delete_gossip

			when 4
			puts "Vous allez quitter l'app".blue
			break

			else
			puts "Commande non valide"
		end
	end
end
end

Router.new.perform