class Driver

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        return @@all
    end

    def passengers
        self.rides.map {|ride| ride.driver}
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def self.milage_cap(miles)
        mile_cap_drivers = []

        self.all.each do |driver|
            if driver.total_distance > miles
                mile_cap_drivers << driver
            end
        end

        return mile_cap_drivers
    end

end