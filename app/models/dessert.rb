class Desserts

    attr_accessor :name, :bakery
    @@all = []

    def initialize(name, bakery)
        @ingredients = ingredients
        @bakery = bakery
        @@all << self
    end

    def ingredients
        Ingredient.all.select{|ing| ing.dessert == self}
    end

    def cal_counts
        ingredients.map{|ing| ing.calories}.reduce(&:+)
    end

    def self.all 
        @@all 
    end

end