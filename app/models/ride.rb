require "pry"
class Ride
    attr_accessor :driver, :passenger, :distance
    @@all = []
    @@distance = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        @@distance << distance
        @@all << self
    end

    def self.average_distance
#         sum = all.reduce(0) {|start, ride| start + ride.distance}
#         binding.pry
#         sum/all.length

#        distance.sum/distance.length
       
        sum = all.sum {|ride| ride.distance}
        sum/all.length
        
    end

    def self.distance
        @@distance
    end
    def self.all
        @@all
    end

end