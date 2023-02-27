class Dragon 

    attr_reader :name, :color, :rider
    def initialize (name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @meal_count = 0
        @hungry = true
    end

    def eat
        @meal_count += 1
    end

    def hungry? 
        if @meal_count >= 3
            @hungry = false
        else
            @hungry = true
        end
    end

end
