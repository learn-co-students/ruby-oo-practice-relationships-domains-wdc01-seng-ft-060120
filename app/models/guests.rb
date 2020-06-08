class Guest

    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
        trip.guest == self 
        end
    end
    
    def trips_count
        trips.count
    end
      
    def listings
        self.trips.map do |trip|
        trip.listing
        end
    end

    def self.pro_traveller
    end

    def self.find_all_by_name(name)
    end

end