#belongs to passenger and driver

class Ride
    attr_reader :passenger, :driver, :distance    
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.average_distance
        total_distance = self.all.reduce(0) do |memo, ride|
            memo + ride.distance
        end
        (total_distance/self.all.length).round(2)
    end

    def self.all
        @@all
    end

end