class ColoradoLottery
  attr_reader :registered_contestants,
              :winners, 
              :current_contestants
            
  def initialize
    @registered_contestants = {}
    @winners = []
    @current_contestants = {}
  end

  def interested_and_18?(contestant, game)
    # require 'pry'; binding.pry
    if contestant.age >= 18 && contestant.game_interests.include?(game.name)
      true
    else
      false
    end
  end

  def can_register?(contestant, game)
    if interested_and_18?(contestant, game) && (contestant.state_of_residence == "CO" || game.national_drawing? == true)
      true
    else
      false
    end
  end

  def register_contestant(contestant, game)
      registered_contestants[game.name] = [].push(contestant)
  end



end

# - We will only register contestants that `#can_register?`
# - `#eligible_contestants` is a list of all the contestants who have been registered to play a given game and that have more spending_money than the cost.
# - current_contestants are lists of contestant names who have been charged, organized by game.