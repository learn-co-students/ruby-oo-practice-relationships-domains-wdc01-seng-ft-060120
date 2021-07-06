class ShowCharacter

    attr_accessor :show, :character

    @@all = []

    def initialize(show, character)
        @show = show
        @character = character

        self.class.all << self
    end

    def self.all
        return @@all
    end

end