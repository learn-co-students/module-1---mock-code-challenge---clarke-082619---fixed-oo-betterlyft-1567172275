#passenger has many rides

class Passenger

    attr_reader :name

    @@all = []

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
        rides.reduce(0) {|memo, ride| memo + ride.distance}.round(2)
    end

    def self.premium_members
        self.all.select {|passenger|passenger.total_distance > 100}
    end

    def self.all
        @@all
    end


end
