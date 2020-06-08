class Listing
   
    @@all = []
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
        self.all.select{|listing| listing.city == city}
    end
    def self.most_popular
        self.all.max_by{|listing| listing.trip_count}    
    end

    def self.most_popular_array
        num = self.most_popular.trip_count
        self.all.select{|listing| listing.trip_count == num}
    end
    
   

end