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
        count_array = []
        self.all.each do |ride|
            count_array << ride.distance
        end

        return count_array.reduce(:+) / count_array.count.to_f
    end

end