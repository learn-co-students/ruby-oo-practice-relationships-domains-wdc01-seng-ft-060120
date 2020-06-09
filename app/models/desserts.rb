class Dessert

    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery

        @@all << self
    end

    def self.all
        return @@all
    end

    def ingredients
        Ingredient.all.select {|ing| ing.dessert == self}
    end

    def calories
        self.ingredients.map {|ing| ing.calorie_count}.reduce(:+)
    end

end