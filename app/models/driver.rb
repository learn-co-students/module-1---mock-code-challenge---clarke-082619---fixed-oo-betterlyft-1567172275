
class Driver

    attr_accessor :name, :passenger_names, :rides
    @@all = []

    def initialize(name)
        @name = name
        @passenger_names = passenger_names
        @rides = rides
        @@all << self
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        Ride.all.select {|ride| ride.distance > distance }
    end

end