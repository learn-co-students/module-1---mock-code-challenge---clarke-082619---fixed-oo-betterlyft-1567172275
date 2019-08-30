class Ride
    attr_accessor :driver, :passenger, :distance
    @@drivers = []
    @@distance = []
    @@rides = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@distance << distance
        @@drivers << driver
        @@rides << passenger
    end

    def passenger
        @@passengers
    end

    def driver
        @driver
    end

    def distance
        @distance
    end

    def average_distance
        sum = 0
        sum << @distance
        avg_distance = sum / @@distance.length
        avg_distance
    end
end

