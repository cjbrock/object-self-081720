require 'pry'

# person1 = {name: "Adam", age: 21}
# person2 = {name: "Molly", age: 21}
# person3 = {name: "Sascha", age: 21, hair_color: "awesome"}

# puts person2[:name]

# def speak(person_name)
#     puts "Hello I'm #{person_name[:name]}, and my hair color is #{person_name[:hair_color]}"
# end

# speak(person1)
# speak(person2)
# speak(person3)

class Person
    def initialize(knowledge_level=20)
        @knowledge_level=knowledge_level
    end

    # attr_reader :knowledge_level
    # attr_writer :knowledge_level

    attr_accessor :knowledge_level

    # def knowledge_level #getter/reader
    #     @knowledge_level
    # end

    # def knowledge_level=(kl) #setter/writer
    #     @knowledge_level = kl
    # end


    def speak
        puts "Hello"
    end

    def jump
        puts "How high? Real high."
    end

    def study
        puts self
        @knowledge_level += 10
        puts "Yay learning!!! Knowledge level increased to: #{knowledge_level}"
        # puts "Yay learning!!! Knowledge level increased to: #{@knowledge_level}"
        # puts "Yay learning!!! Knowledge level increased to: #{self.knowledge_level}"
        @knowledge_level -= 5
        puts "You forgot some stuff!!! Knowledge level decreased to: #{knowledge_level}"

    end

end

person4 = Person.new

binding.pry