class Driver
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def passenger_names
        my_passengers = []
        rides.each do |ride| 
            if !my_passengers.include?(ride.passenger)
            my_passengers << ride.passenger
            end
        end
        my_passengers
    end

    def self.mileage_cap(cap)
        all.select do |driver|
            driver.rides.reduce(0) {|sum, ride| sum + ride.distance} > cap
        end
    end

    def self.all
        @@all
    end
end

