class Driver

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    # for passengers_names, I just need to change this method / implement
    # a new method that stores the names in the same way that passengers.premium_members works
    def passengers_names
        Ride.all.select do |rides| 
            rides.passenger.name if rides.driver == self
        end
    end

    def rides
        Rides.all.select { |rides| rides.driver == self }
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        Rides.all.select do |rides|
            rides.driver if rides.distance > distance
        end
    end


end

