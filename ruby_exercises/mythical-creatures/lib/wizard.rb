class Wizard
    attr_reader :name, :bearded

    def initialize (name, bearded = true)
        @name = name 
        @bearded = bearded 
        @rested = true 
        @spells_cast = 0
    end

    def bearded? 
        if bearded == false
            false
        else 
            true
        end
    end
    # Unable to figure out how to make bearded? = false


    # def incantation 
    # end
    # not sure what this means 

    def cast
        @spells_cast += 1
        "MAGIC MISSILE"
    end

    def rested? 
        if @spells_cast >= 3
            false
        else 
            true
        end
    end

end 

