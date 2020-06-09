class Passenger

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        return @@all
    end

    def drivers
        self.rides.map {|ride| ride.driver}
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def total_distance
        self.rides.map {|ride| ride.distance}.reduce(:+)
    end

    def self.premium_members
        premium_members = []
        self.all.each do |passenger|
            if passenger.total_distance > 100
                premium_members << passenger
            end
        end

        return premium_members
    end
end