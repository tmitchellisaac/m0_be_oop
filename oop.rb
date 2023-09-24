# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

# class Unicorn
#     def initialize(name)
#         @name = name
#         @color = "silver"
#     end

#     def say(string)
#        "*~*#{string}*~*"
#     end
# end

# connor = Unicorn.new("Connor")
# p connor.say("I'm a magical being, welcome to the wonders of the universe")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

# class Vampire
#     def initialize(name, pet = "bat", thirsty = true)
#         @name = name
#         @pet = pet
#         @thirsty = thirsty
#     end

#     def drink
#         @thirsty = false
#     end
# end

# thomas = Vampire.new("Thomas","snake")
# p thomas
# thomas.drink
# p thomas

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader(:name, :rider, :color, :is_hungry)

    def initialize(name, rider, color, is_hungry = true)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
        @food = 0
    end

    def eat
       @food = @food.next
        if @food >= 4
            @is_hungry = false
        else
        "Dragon is still hungry"
        end
    end
end

kyle = Dragon.new("Kyle","Thomas","black")
kyle.eat
kyle.eat
p kyle.eat
p kyle.is_hungry
p kyle

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
