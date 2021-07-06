class Show

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        Movie.all.select {|movie| movie.name == self.name}
    end
end