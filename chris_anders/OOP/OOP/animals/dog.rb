require_relative "mammal"

class Dog < Mammal
	def initialize (health = 150)
		@health = health
	end
  def pet
    @health +=5
    self
  end
  def walk
    @health -=1
  end
  def run
    @health -=10
    self
  end
  def display_health
    puts @health
  end
end

d = Dog.new
d.display_health
d.pet.display_health
d.run.run.display_health
# d.walk.display_health
