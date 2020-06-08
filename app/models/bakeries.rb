class Bakery
    attr_accessor :name
    attr_reader :desserts

    @@all = []

    def initialize(name)
        @name = name
        @desserts = []

        @@all << self
    end

    def self.all
        return @@all
    end

    def add_dessert(dessert)
        @desserts << dessert
    end

    def ingredients
    end

    def average_calories
    end

    def shopping_list
    end
end