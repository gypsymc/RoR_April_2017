class User
end
user1 = User.new
user2 = User.new
user1 == user2 # => false

class User
  @first_name
end
user1 = User.new
user2 = User.new
user1.first_name = "Matz"

class User
  def first_name=(val)
    @first_name = val
  end
end

user1.first_name = "Matz"

puts user1.inspect # => #<User:0x007f8f4b043a30 @first_name="Matz">

user1.first_name # =>  undefined method `first_name' for #<User:0x007fb104103b70 @first_name="Matz"> (NoMethodError)

class User
  def first_name
    return @first_name
  end
end

class User
  def first_name
    @first_name
  end
end

class User
  @last_name
end

class User
  attr_reader :last_name
  attr_writer :last_name
  ...
end

class User
  attr_accessor :first_name
  attr_accessor :last_name
end

class User
  attr_accessor :first_name, :last_name
end
kobe = User.new
kobe.first_name= "Kobe"
kobe.last_name = "Bryant"


class User
  attr_accessor :first_name, :last_name
  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end
end
steph = User.new("Stephen", "Curry")
