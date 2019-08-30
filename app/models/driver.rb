class Driver

    @@all = []  # all drivers
    attr_accessor :name
    def initialize (name)
        @name = name
        @@all << self       # add driver to all drivers
    end

    def passenger_names
        passenger_array = []
        Ride.all.each do |ride|
            if ride.driver.name == self.name                # if the ride of driver name is equal to this driver
                passenger_array << ride.passenger.name      
            end
        end
        passenger_array.uniq
    end

    def rides 
        Ride.all.select {|ride| ride.driver.name == self.name}
    end

    def self.all
        @@all
    end

    def self.milage_cap(distance)
        driver_array = []
        Ride.all.each do |ride|
            if (ride.driver.name == self.name) && (ride.driver.distance > distance)
                driver_array << ride.driver
            end 
        end
        driver_array 
    end
end