class Ingredient

    attr_reader :name, :dessert, :calorie_count

    @@all = []

    def initialize(new_name, calorie_count, dessert)
        @name = new_name # instance variable
        @dessert = dessert
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all 
    end

    def bakery
        self.dessert.bakery
    end

    # def name
    #     return @name
    # end

    # def dessert
    #     return @dessert
    # end

    # def calorie_count
    #     return @calorie_count
    # end

    # def is_yummy?
    #     return yummy # won't work because local variable
    # end

end


class Dessert

    attr_reader :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all 
        @@all 
    end

    def ingredients
        # returns array of all ingredients
        # in this dessert
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def shopping_list
        # returns array of names (strings)
        # of all ingredients in this dessert
        self.ingredients.map do |ingredient|
            ingredient.name
        end
    end

    def calorie_count
        self.ingredients.map do |ingredient|
            ingredient.calorie_count
        end.sum

    end
end

class Bakery

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def desserts
        # should return an array 
        # of desserts the bakery makes
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def ingredients
        # should return an array of all ingredients this bakery uses
        self.desserts.collect do |dessert|
            dessert.ingredients 
        end
        # Ingredient.all.select do |ingredient|
        #     ingredient.bakery == self
        # end
    end

end
