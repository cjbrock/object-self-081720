require 'pry'

class Cereal
    attr_accessor :name, :brand, :sweetness_level, :marshmallows

    @@all = []

    def initialize(name, brand, sweetness, marshmallows)
        @name = name
        @brand = brand
        @sweetness_level = sweetness
        @marshmallows = marshmallows
        @@all << self
    end

    def testing
        binding.pry
    end
    
    def i_method
        second_method
    end

    def second_method
        puts "in second method"
        puts self
    end
    
    def self.all
        @@all
    end

    def self.where_brand_is(brand)
        self.all.find_all{ | cereal | cereal.brand == brand }
    end

    def self.where_marsh_is(marsh)
        self.all.find_all{ | cereal | cereal.marshmallows == marsh }
    end

end

weet = Cereal.new("Weetabix", "Weetabix Queens", 0, false)
oreo = Cereal.new("Oreo O's", "Nabisco", 25, false)
oreo = Cereal.new("Nutter Butter", "Nabisco", 25, false)
oreo = Cereal.new("Shortbread Sandies", "Nabisco", 25, false)
lc = Cereal.new("Lucky Charms", "General Mills", 15, true)
cp = Cereal.new("Corn Pops", "Kelloggs", 10, false)

binding.pry