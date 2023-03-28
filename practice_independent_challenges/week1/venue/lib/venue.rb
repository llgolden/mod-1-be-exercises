class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron_name) 
    @patrons << patron_name
  end

  def yell_at_patrons 
    patrons_upper = []
    patrons.each do |patron|
      patrons_upper << patron.upcase
    end
    patrons_upper
  end

  def over_capacity?
    if patrons.length <=4
      false
    else
      true
    end 
  end

  def kick_out
    while over_capacity? == true
      @patrons.pop
    end
  end
end