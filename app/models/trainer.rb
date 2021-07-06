class Trainer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        
        self.class.all << self
    end

    def self.all
        return @@all
    end

    def self.most_clients
        max_clients = -1
        trainer_object = nil

        Trainer.all.each do |trainer|
            current_count = Client.all.count {|client| client.trainer == trainer}
            if current_count > max_clients
                max_clients = current_count
                trainer_object = trainer
            end
        end

        return trainer_object
    end

end