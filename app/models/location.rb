class Location

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        
        self.class.all << self
    end

    def self.all
        return @@all
    end

    def self.least_clients
        client_count = 9999999999
        location_name = nil

        Location.all.each do |location|
            current_count = ClientLocation.all.count {|clientlocation| clientlocation.location == location}

            if current_count < client_count
                client_count = current_count
                location_name = location
            end
        end

        return location_name
    end

end