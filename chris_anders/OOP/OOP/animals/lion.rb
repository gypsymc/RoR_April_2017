
require_relative 'mammal'

class Lion < Mammal
	def initialize (health = 170)
		@health = health
	end
	def fly
		@health -= 10
		return self
	end
	def attack_town
		@health -= 50
		return self
	end
	def eat_humans
		@health += 20
		return self
	end
	def display_health
    puts @health
    puts "This is a lion"
		return
	end
end

lion = Lion.new
lion.display_health
lion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
