class Apartment
  attr_reader :rented, :rooms
      
  def initialize
    @rented = false
    @rooms = []
  end 

  def is_rented? 
    @rented 
  end

  def rent
    @rented = true
  end

  def add_room(room)
    @rooms << room
  end

  def list_rooms_by_name_alphabetically
    names = []
    @rooms.each do |room|
      names << room.name
    end
    names.sort 

    end
  end

end