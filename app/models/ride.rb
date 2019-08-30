class Ride

    attr_accessor :driver, :distance, :passenger 

    def initialize(driver, passenger, distance)
        @driver = driver 
        @passenger = passenger
        @distance = distance 
    end

    def passenger
        Passenger.rides
    end 

    def driver
        Driver.rides
    end 

    def distance

    end 

    def self.average_distance

    end 


end 
