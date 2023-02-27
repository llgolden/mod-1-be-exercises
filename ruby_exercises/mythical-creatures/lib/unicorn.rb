class Unicorn 

    attr_reader :name, :color
    def initialize (name, color = "silver")
        @name = name
        @color = color
    end 

    def silver? 
        if @color == "silver"
            true
        else
            false
        end
    end

    def say(message)
        "**;* #{message} **;*"
    end

end



































# class Unicorn

#     attr_reader :name, :color
#     def initialize(name, color = "silver")
#         @name = name
#         @color = color
#     end

#     def silver? 
#         return true if color == "silver"
#         false
#     end

#     def say(message)
#         # "**;* " + message + " **;*" 
#         "**;* #{message} **;*"
#     end

# end


    #  if @color == "silver"
    #     true
    #  else 
    #     false 
    #  end


# module Speak 
#     def speak(sound)
#         puts sound
#     end
# end

# class GoodDog
#     include Speak 
# end

# class HumanBeing
#     include Speak 
# end

# sparky = GoodDog.new
# sparky.speak("Arf!")
# bob = HumanBeing.new
# bob.speak("Hello!")

