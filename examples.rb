require 'pry'

class Cereal
    attr_accessor :name, :brand, :sweetness_level, :marshmallows

    def initialize(name, brand, sweetness)
        @name = name
        @brand = brand
        @sweetness_level = sweetness
    end
    

end

c = Cereal.new("Weetabix", "Weetabix Queens", 0)

binding.pry