class Passenger

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def name
        @name
    end

    def rides
    end

    def drivers
    end

    def total_distance
    end

    def self.all
        @@all
    end

    def self.premium_members
    end

end
