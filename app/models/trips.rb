class Trip

    attr_accessor :listing, :guest

    @@all = []

    def initialize(listing, guest)
        @listing = listing
        @guest = guest

        @@all << self
    end

    def self.all
        return @@all
    end

end