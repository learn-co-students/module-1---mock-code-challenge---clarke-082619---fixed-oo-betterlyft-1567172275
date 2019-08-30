class Passenger
    attr_reader :name
    @@all = []
    @@premium_members = []
    @@rides = []
    def initialize(name)
        @name = name
        @@rides << name
    end

    def rides
        @@rides
    end

    def drivers
        self.drivers
    end

    def total_distance
        self.distance.to_f
    end

    def self.all
        @@all
    end

    def premium_members
        if self.total_distance >= 100
           @@premium_members << self
           @@premium_members
        end
    end

end

