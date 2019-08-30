class Driver

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def name
        @name
    end

    def passenger_names
    end

    def rides
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
    end
end
