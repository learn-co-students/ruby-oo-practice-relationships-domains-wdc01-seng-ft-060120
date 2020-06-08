class Guest

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        return @@all
    end

    def listings
        return self.trips.map {|obj| obj.listing}
    end

    def trips
        return Trip.all.select {|obj| obj.guest == self}
    end

    def trip_count
        return self.trips.count
    end

    def self.pro_traveler
        return self.all.select {|guest| guest.trip_count > 1} 
    end

    def self.find_all_by_name(name)
        return self.all.select {|obj| obj.name == name}
    end

end