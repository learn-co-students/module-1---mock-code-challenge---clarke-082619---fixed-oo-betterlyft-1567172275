class Ride
    @@all = [] # all the ride objects
    attr_accessor :driver, :passenger, :distance
    
    def initialize (driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.average_distance
        sum = 0
        self.all.each { |ride| sum += ride.distance }
        sum = (sum.to_f / self.all.length)           
    end

end