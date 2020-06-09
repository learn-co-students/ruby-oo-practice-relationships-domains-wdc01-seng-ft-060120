class Character

    attr_accessor :name, :actor

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor

        self.class.all << self
    end

    def self.all
        return @@all
    end

    def self.most_appearances
        max_appearance = -1
        actor_name = nil

        self.all.each do |char|
            show_count = ShowCharacter.all.count {|showchar| showchar.character == char}
            movie_count = MovieCharacter.all.count {|movchar| movchar.character == char}

            if (show_count + movie_count) > max_appearance
                max_appearance = (show_count + movie_count)
                actor_name = char
            end
        end

        return actor_name
    end
end
