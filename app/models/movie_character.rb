class MovieCharacter

    attr_accessor :movie, :character

    @@all = []

    def initialize(movie, character)
        @movie = movie
        @character = character

        self.class.all << self
    end

    def self.all
        return @@all
    end

end