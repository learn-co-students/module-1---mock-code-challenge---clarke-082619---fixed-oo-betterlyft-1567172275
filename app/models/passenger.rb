require 'pry'

class Passenger
    attr_reader :name
    attr_accessor :distance 

    @@all = []

    def initialize(name, distance)
        @name = name
        @distance = distance
        @@all << self
    end 

    
    def name
        self.name 
    end

    def rides
        Ride.all
    end

    def driver
        Ride
    end

    def total_distance
        self.distance 
    end

    def self.premium_members
        members = []
        if self.distance > 100
            members << self
        end
        members
    end 

    def self.all
        @@all
    end
end 

binding.pry