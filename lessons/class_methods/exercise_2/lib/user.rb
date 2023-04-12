require "pry"
# For clarity, un-comment each #binding.pry to verify your assumptions against the user_spec test. Use the questions in comments to guide your exploration.


class User
  attr_reader :name
  def initialize(name)
    @name = name
    #binding.pry ##What is the @name property?
    # @id = id (LG added in)
  end

  def say_hello
    #binding.pry ##What will be output here?
    "Hello, " + @name
  end

  def self.create_multiple(users)
    users.map do |user|
      new_user = User.new(user[:name])
      #binding.pry ## What is new_user? What properties does it have?
    end
  end

  def self.say_hello
    "Hello from the class"
  end

  def most_popular_post
    # instance method
    # one user's most popular post
    # sam = User.new('Sam')
    # sam.most_popular_post
  end

  def self.most_popular_post
    # class method
    # most popular post by ANY user on the platform
    # User.most_popular_post
    # does not inherently do anything with the instance method by the same name
  end

  def self.find(id)
    # expect @@users = [<User object>, <User object 2>]
    @@users.find do |user|
      user.id == id
    end
  end
end

class Child

  self.method
  
end

# # Use Class Methods when:
# - When we want to look through all the instances of a class
# - When we don’t necessarily want to go through every instance one by one
# - When we don’t want to instantiate an object
