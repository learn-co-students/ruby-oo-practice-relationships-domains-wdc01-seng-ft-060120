class Passenger

    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)  
    end

    def trips
        Trip.all.select do |trip|
        trip.guest == self 
        end
    end 
      
    def listings
        self.trips.map do |trip|
        trip.listing
        end
    end
    
end