class Driver
    attr_accessor :name

    def initialize(name)
        @name = name
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
      
    def guests
        trips.map { |trip| trip.guest}
    end

end