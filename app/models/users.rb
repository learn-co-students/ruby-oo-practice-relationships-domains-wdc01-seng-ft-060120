class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        self.class.all << self
    end

    def self.all
        return @@all
    end

    def self.highest_pledge
        max_pledge = -1
        max_user = nil

        Pledge.all.each do |pledge|
            if pledge.amount > max_pledge
                max_pledge = pledge.amount
                max_user = pledge.user
            end
        end

        return max_user
    end

    def self.multi_pledger
        self.all.select do |user|
            Pledge.all.count {|pledge| pledge.user == user} > 1
        end
    end

    def self.project_creator
        users = []

        Project.all.each do |proj|
            users << proj.user
        end

        return users.uniq
    end

end