# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_accessor :name 
    attr_reader :color
    def initialize(name)
      @name = name
      @color = "silver"
    end
    
    def say(message)
      "*~*" + message + "*~*"
    end
    # def name(new_name) 
    #     @name = new_name
    # end 
  end
  unicorn1 = Unicorn.new("Lucky")
  puts unicorn1.name
  unicorn1.name = "Rainbow"  
    puts unicorn1.name
#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
attr_accessor :name, :pet, :thirsty

def initialize(name, pet="bat")
  @name = name
  @pet = pet
  @thirsty = true
end

def drink
  @thirsty = false
end
end

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color

    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @hunger = true
        @eat_count = 0
    end

    def eat
        if @eat_count < 4
            @eatcount += 1
        end
        if @eat_count == 4
            @hunger = false
    end
end
end

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_accessor :name, :disposition
    attr_reader :age, :is_adult, :is_old, :has_ring
    
    def initialize(name, disposition)
      @name = name
      @disposition = disposition
      @age = 0
      @is_adult = false
      @is_old = false
      @has_ring = (name == "Frodo")
    end
    
    def celebrate_birthday
      @age += 1
      @is_adult = true if @age >= 33
      @is_old = true if @age >= 101
    end
  end
     
