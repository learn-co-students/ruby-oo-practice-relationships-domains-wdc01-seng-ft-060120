class Client

    attr_accessor :name, :trainer

    @@all = []

    def initialize(name, trainer="Unassigned")
        @name = name
        @trainer = trainer
        
        self.class.all << self
    end

    def self.all
        return @@all
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

end