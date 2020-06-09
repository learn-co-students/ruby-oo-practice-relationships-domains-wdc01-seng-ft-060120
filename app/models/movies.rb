class Movie

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        self.class.all << self
    end

    def self.all
        return @@all
    end

    def self.most_actors
        actor_count = 0
        movie_name = nil

        self.all.each do |movie|
            curr_count = MovieCharacter.all.select {|mov_char| mov_char.movie == movie}.count
            if curr_count > actor_count
                actor_count = curr_count
                movie_name = movie
            end
        end

        return movie_name
    end

end