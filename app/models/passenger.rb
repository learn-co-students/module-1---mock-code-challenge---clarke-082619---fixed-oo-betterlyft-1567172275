class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def rides
        Ride.all.select { |rides| rides.passenger == self }
    end

    def drivers
        drivers = []
        Ride.all.select do |rides| 
            drivers << rides.driver if rides.passenger == self 
        end
        drivers
    end
    
    def total_distance
        distance = 0.0
        Ride.all.select do |rides| 
            distance += rides.distance if rides.passenger == self 
         end
         distance
    end

    def self.all
        @@all
    end

    def self.premium_members
       Passenger.all.select { |passenger| passenger.total_distance > 100 }
    end

end

