class LocationTrainer

    attr_accessor :location, :trainer

    @@all = []

    def initialize(location, trainer)
        @location = location
        @trainer = trainer
        
        self.class.all << self
    end

    def self.all
        return @@all
    end

end