class Bakery

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all 
        @@all
    end

    def desserts
        Desserts.all.select{|des| des.bakery == self}
    end

    def ingredients
        desserts.map{|des| des.ingredients}
    end

    def average_calories
        desserts.map{|des| des.calories}.reduce(&:+)
    end
end