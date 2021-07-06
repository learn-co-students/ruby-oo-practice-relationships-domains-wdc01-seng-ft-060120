class Listing

    attr_accessor :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city

        @@all << self
    end

    def self.all
        return @@all
    end

    def guests
        return self.trips.map {|obj| obj.guest}
    end

    def trips
        return Trip.all.select {|obj| obj.listing == self}
    end

    def trip_count
        return self.trips.count
    end

    def self.find_all_by_city(city)
        return self.all.select {|listing| listing.city == city}
    end

    def self.most_popular
        all_listings = Trip.all.map {|trip| trip.listing}
        return all_listings.max_by {|listing| all_listings.count(listing)}
    end
end