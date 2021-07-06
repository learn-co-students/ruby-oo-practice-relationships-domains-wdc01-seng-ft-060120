class Ingredient

    attr_accessor :name, :dessert, :calorie_count

    @@all = []

    def initialize(name, dessert, calorie_count)
        @name = name
        @dessert = dessert
        @calorie_count = calorie_count

        @@all << self
    end

    def self.all
        return @@all
    end

    def bakery
        return dessert.bakery
    end

    def self.find_all_by_name(name)
        self.all.select do |ingredient|
            ingredient.name.include?(name)
        end
    end

end