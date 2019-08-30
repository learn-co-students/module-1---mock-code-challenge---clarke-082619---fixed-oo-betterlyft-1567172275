class Driver 
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def passenger_name
        rides.map {|ride| ride.passenger}
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def self.all
        @@all
    end

    def self.mileage_cap (distance)
        Ride.all.select{|ride| ride.distance > distance}.each {|ride| ride.driver}
    end


end
