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

  # - A contestant #can_register? if they are interested in the game, 18 years of age or older, and they are either a Colorado resident or this is a national game
  
end



