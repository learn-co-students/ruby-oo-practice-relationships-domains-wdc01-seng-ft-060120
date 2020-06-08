class Trip

    attr_reader :name, :guest, :listing
    #attr_accessor :guest, :listing

    @@all = []

    def initialize(name, guest, listing)
        @name = name
        @guest = guest
        @listing = listing
        @@all << self
    end

    def self.all
      @@all
    end

end
