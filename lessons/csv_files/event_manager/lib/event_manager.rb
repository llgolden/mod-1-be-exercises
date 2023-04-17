require "csv"

class EventManager

  def name_finder
    contents.each do |row| 
      name = row[:first_name]
    end
  end
  
end