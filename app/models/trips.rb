class Trip

    attr_reader :guest, :listing, :date
    #attr_accessor :guest, :listing

    @@all = []

    def initialize(guest, listing, date)       
        @guest = guest
        @listing = listing
        @date = date
        @@all << self
    end

    def self.all
      @@all
    end

end
