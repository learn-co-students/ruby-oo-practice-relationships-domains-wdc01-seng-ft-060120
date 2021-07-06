class ClientLocation

    attr_accessor :client, :location

    @@all = []

    def initialize(client, location)
        @client = client
        @location = location
        
        self.class.all << self
    end

    def self.all
        return @@all
    end

end