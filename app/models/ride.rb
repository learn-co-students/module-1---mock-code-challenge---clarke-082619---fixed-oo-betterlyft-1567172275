class Ride

    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
    #    driver = Driver.all.find { |existing_drivers| existing_drivers == driver }
    #    passenger = Passenger.all.find { |existing_passengers| existing_passengers == passenger }
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
       @@all << self
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def distance
        @distance
    end

    def self.all
        @@all
    end

    def self.total_distance
        total = 0.0
       all.each do |rides| 
        total += rides.distance 
       end
       total
    end

    def self.average_distance
       total = Ride.total_distance
       total/all.length
    end




end

