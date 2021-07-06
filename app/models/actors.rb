class Actor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        self.class.all << self
    end

    def self.all
        return @@all
    end

    def self.most_characters
        max_appearances = -1
        max_name = nil

        self.all.each do |actor|
            curr_actor_count = Character.all.count(actor)
            if curr_actor_count > max_appearances
                max_appearances = curr_actor_count
                max_name = actor
            end
        end

        return max_name
    end
end