class Ride
    @@all = []

    attr_reader :driver, :passenger
    attr_accessor :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def self.average_distance
        average = 0
        counter = 0
        while counter < @@all.length
            average += @distance
            counter += 1
        end 
    end

    def self.all
        @@all
    end

end
