class Passenger
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        my_drivers = []
        rides.each do |ride| 
            if !my_drivers.include?(ride.driver)
            my_drivers << ride.driver
            end
        end
        my_drivers
    end

    def total_distance
        rides.reduce(0) {|sum, ride| sum + ride.distance}
    end

    def self.premium_members
        all.select {|passenger| passenger.total_distance >= 100.0}
    end

    def self.all
        @@all
    end
end
