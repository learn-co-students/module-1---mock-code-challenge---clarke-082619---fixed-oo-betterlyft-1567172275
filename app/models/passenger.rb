
class Passenger
    
    attr_reader :name

    @@all = []
    @@premium_members = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.map {|ride| ride.driver}
    end

    def total_distance
        passenger_distances = rides.map {|ride| ride.distance}
        passenger_distances.sum
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select { |passenger| passenger.total_distance > 100.0 }
    end

end