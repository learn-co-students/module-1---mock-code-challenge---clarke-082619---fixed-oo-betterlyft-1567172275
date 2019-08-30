#driver has many rides
class Driver
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides 
        Ride.all.select {|ride| ride.driver == self}
    end

    def passenger_names
        passengers = rides.map {|ride|ride.passenger.name}
        passengers.uniq {|name|name}
    end

    def driver_distance
        rides.reduce(0) {|memo, ride| memo + ride.distance}
    end

    def self.mileage_cap(distance)
        self.all.select {|driver| driver.driver_distance > distance}
    end
end

