class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def add_candy(candy)
    @candies << candy
  end
end