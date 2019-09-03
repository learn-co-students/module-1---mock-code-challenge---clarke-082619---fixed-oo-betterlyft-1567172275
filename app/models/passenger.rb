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
        rides.map {|ride| ride.driver}.uniq
    end

    def total_distance
        #rides.reduce(0){|start, ride| start + ride.distance}

   #     distances = rides.map{|ride| ride.distance}
    #    distances.sum

        rides.sum{|rides| rides.distance}
    end

    def self.premium_members
        all.select{|passenger| passenger.total_distance > 100.0
        }

        # Ride.all.select
    end

    def self.all
        @@all
    end
end
