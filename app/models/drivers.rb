class Driver
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
        ride.driver == self 
        end
    end 
      
    def passengers
        rides.map { |ride| ride.passenger}
    end

    def self.mileage_cap(distance)
        p driver_arr = self.rides.select { |ride| ride.distance > distance}
    end

end