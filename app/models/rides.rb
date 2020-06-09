require 'pry'
class Ride

    attr_reader :distance
    attr_accessor :passenger, :driver
    @@all = []

    def initialize(distance, passenger, driver)
        @distance = distance
        @passenger = passenger
        @driver = driver
        @@all << self
    end

    def self.all
      @@all
    end

    def self.average_distance
      sum = 0
      distances_arr = self.all.map { |ride| ride.distance}
      distances_arr.each do |distance|
        sum+=distance
      end
      puts (sum / distances_arr.count)  
    end

end