class Ride

    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        @@all << self
    end

    def self.all
        return @@all
    end

    def self.average_distance
    end

end