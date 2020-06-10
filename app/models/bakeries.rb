class Bakery

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        return @@all
    end

    def ingredients
        self.desserts.map {|dessert| dessert.ingredients}
    end

    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def average_calories
        calorie_array = self.ingredients.map {|ing| ing.calorie_count}
        return calorie_array.reduce(:+) / calorie_array.size
    end

    def shopping_list
        self.ingredients.flatten.map {|ingredient| ingredient.name}.join(", ")
    end

end