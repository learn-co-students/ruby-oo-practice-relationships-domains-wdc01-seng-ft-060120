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

    def rides
        Ride.all.select do |ride|
        ride.passenger == self 
        end
    end 
      
    def drivers
        self.rides.map do |ride|
        ride.driver
        end
    end

    def total_distance
        distance_arr = self.rides.map { |ride| ride.distance}
        distance_arr.sum
    end

    def self.premium_members
        p self.all.select { |person| person.total_distance > 100}
    end
    
end