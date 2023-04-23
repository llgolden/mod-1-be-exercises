class Activity
  attr_reader :name, :participants, :cost
            
  def initialize(name)
    @name = name
    @cost = 0
    @participants = {}
  end

  def add_participant(person, paid)
    participants[person] = paid
  end

  def total_cost
    participants.values.sum
  end

  def split
    total_cost / participants.keys.count
  end
  
  def owed
    each_owed = {}
    participants.each do |participant, paid|
      each_owed[participant] = (split - paid)
    end
    each_owed
  end
end 

# For the `owed` method, the amount each person owes is the difference between what they paid and the `split`. If a participant paid less than their fair share they owe a positive amount. If a participant paid more than their fair share they owe a negative amount (meaning they are owed money).