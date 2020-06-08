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
        self.all.select{|guest| guest.trips_count > 1}        
    end

    def self.find_all_by_name(name)
        self.all.select{|guest|guest.name == name}
    end

end