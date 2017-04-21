# class MathDojo
#   # your code here
# end
# challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
# challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
#

class MathDojo
	@@total = 0

	def add arr
		arr.map { |x| @@total += x }
		return self
	end

	def subtract arr
		arr.map! { |x| @@total -= x }
		return self
	end

	def get_total
		puts @@total
	end

end

mathdojo = MathDojo.new
mathdojo.add([2,3,4,5]).subtract([1,5,3]).get_total



puts ("***************")
class MathDojo
  attr_reader :answer

  def initialize
    @answer = 0
  end

  def add(*numbers)
    @answer += numbers.flatten.reduce(0, :+)
    self
  end

  def subtract(*numbers)
    @answer -= numbers.flatten.reduce(0, :+)
    self
  end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).answer
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).answer
puts challenge1
puts challenge2
# puts("********")
#
# def splatting *params
#  params
# end
# puts splatting(1).inspect # => [1]
# puts splatting(1, 2, 3, 4, 5).inspect # => [1, 2, 3, 4, 5]
# # => All the arguments are condensed into a single array.
