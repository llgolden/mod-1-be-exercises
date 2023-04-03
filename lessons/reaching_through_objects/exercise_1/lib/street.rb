class Street
  attr_reader :name, :buildings

  def initialize(name)
    @name = name
    @buildings = []
  end

  def add_building(name_of_building)
    @buildings << name_of_building
  end

  # def number_of_available_apartments

  # end


end