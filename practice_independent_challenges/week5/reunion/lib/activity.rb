class Activity
  attr_reader :name, :participants, :cost
            
  def initialize(name)
    @name = name
    @cost = 0
    @participants = {}
  end

  def add_participant(person, cost)
    participants[person] = cost
  end

  def total_cost
    participants.values.sum
  end
end 


# For the `add_participant` method, the first argument represents the name of someone who participated in the activity, and the second argument represents how much they paid for the activity.