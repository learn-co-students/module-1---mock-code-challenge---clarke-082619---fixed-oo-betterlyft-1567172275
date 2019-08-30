class Ride
    @@all = []

    attr_reader :passenger, :driver, :distance

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance

        @@all << self
    end

    def self.average_distance
        total = all.reduce(0) {|sum, ride| sum + ride.distance}
        total / all.length
    end

    def self.all
        @@all
    end
end
