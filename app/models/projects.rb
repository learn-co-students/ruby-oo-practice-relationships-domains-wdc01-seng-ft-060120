class Project

    attr_accessor :name, :user, :goal_amount

    @@all = []

    def initialize(name, user, goal_amount)
        @name = name
        @user = user
        @goal_amount = goal_amount

        self.class.all << self
    end

    def self.all
        return @@all
    end

    def self.no_pledges
        self.all.select do |project|
            Pledge.all.count {|pledge| pledge.project == project} == 0
        end
    end

    def self.above_goal

        projs_above_goal = []

        self.all.each do |project|
            # Getting all pledges that matches the current project
            pledges = Pledge.all.select do |pledge|
                pledge.project == project
            end
            
            # Summing all the pledge amounts and making the result
            # a float. This will convert nil / blank array to 0.0
            goal_amounts = pledges.map do |pledge|
                pledge.amount
            end.reduce(:+).to_f

            # If pledge amount >= current project goal_amount, push it
            # to the final array
            if goal_amounts >= project.goal_amount
                projs_above_goal << project
            end

        end

        return projs_above_goal
    end

    def self.most_backers
    end
    
end