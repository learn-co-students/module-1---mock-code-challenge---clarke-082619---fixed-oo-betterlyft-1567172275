class Driver
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passenger_names
        rides.map{|ride| ride.passenger.name}.uniq
    end

    def total_miles
        rides.sum{|ride| ride.distance}
    end

    def self.mileage_cap(distance)
        Driver.all.select{|driver| driver.total_miles > distance}
    end

    def self.all
        @@all
    end
end
