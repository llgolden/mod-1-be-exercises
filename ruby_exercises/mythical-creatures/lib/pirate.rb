class Pirate 

    attr_reader :name, :job, :booty

    def initialize (name, job = "Scallywag")
        @name = name
        @job = job
        @curse_count = 0
        @booty = 0
    end

    def cursed? 
        if @curse_count < 3
            false
        else 
            true 
        end 
    end 

    def commit_heinous_act
        @curse_count += 1
    end

    def robs_ship
        @booty += 100
    end

end