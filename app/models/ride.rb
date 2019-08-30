
class Ride

    attr_reader :driver, :passenger, :distance
    @@distances = []

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@distances << @distance
        @@all << self
    end

    def self.average_distance
        @@distances.sum / @@distances.length
    end

    def self.all
        @@all
    end

end