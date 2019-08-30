class Ride
    attr_accessor :driver, :passenger, :distance
    @@all = []
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.average_distance
        total = 0
        @@all.each {|ride| total += ride.distance} 
        total/@@all.count
    end

    def self.all
        @@all
    end
    

end
