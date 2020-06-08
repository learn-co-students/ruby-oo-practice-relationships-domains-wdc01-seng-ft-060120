class Ride
    attr_reader :name
    attr_accessor :guest, :listing
    @@all = []

    def initialize(distance, guest, listing)
        @name = name
        @guest = guest
        @listing = listing
        @@all << self
    end

    def self.all
      @@all
    end

end