class User
  # creating instance methods that get and set the first_name and last_name attributes
  attr_accessor :first_name, :last_name

  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end

  def full_name
    puts "I am #{@first_name} #{@last_name}"
  end

  def say_hello
    puts "Hello!"
  end
end
u = User.new("John", "Doe")
u.full_name # => "I am John Doe"
u.say_hello # => "Hello!"


puts("*********BAD EXAMPLE BELOW***********")
class User
  # previous code removed for brevity

  def self.foo
    puts "This is a class method"
  end
end
u = User.new("Jane", "Doe")
u.foo # => NoMethodError: undefined method `foo'
User.foo # => "This is a class method"
