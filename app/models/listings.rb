class Listing

    attr_reader :street_name, :city

    def initialize(street_name, city)
        @street_name = street_name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end


    def trips 
        Trip.all.select do |trip|
        trip.listing == self 
        end
    end 

    def trip_count
        trips.count 
    end
      
    def guests
        trips.map { |trip| trip.guest}
    end

    def self.find_all_by_city(city)
    end

    def self.most_popular
    end

end