class Reunion
  attr_reader :name, :activities
            
  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    activities << activity
  end

  def total_cost
    a = []
    activities.each do |activity|
      a << activity.participants.values.sum
    end
    a.sum
  end

  def breakout
    person_owes = {}
    activities.select do |activity|
      activity.owed.select do |participant, owed|
        if person_owes.keys.include? participant
          person_owes[participant] += owed
        else
          person_owes[participant] = owed
        end
      end
    end
    person_owes
  end

  def summary
    breakout.map { |name, balance| "#{name}: #{balance}" }.join("\n")
  end
end 
