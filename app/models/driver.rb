
class Driver

    attr_reader :name
    @@all = []

    def initialize(name)
        @name =  name
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passengers
        rides.map {|ride| ride.passenger}
    end

    def passenger_names
        passenger_names = passengers.map {|passenger| passenger.name}
        passenger_names.uniq
    end

    def self.all
        @@all
    end

    def total_distance
        driver_distances = rides.map {|ride| ride.distance}
        driver_distances.sum
    end

    def self.mileage_cap(distance)
        self.all.select { |driver| driver.total_distance > distance }
    end
end