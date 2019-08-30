require 'pry'

class Driver
    attr_accessor :name, :miles
   
    @@all = []

    def initialize(name, miles)
        @name = name
        @miles = miles
        @@all << self
    end
    
    def name 
        self.name
    end

    def passengers_name
        driver_passengers = []
        driver_passengers << Ride.passenger
        driver_passengers.uniq
    end
    binding.pry

    def rides
        Ride.driver.all
    end

    def self.all
        @@all
    end

    def self.mile_cap(distance)
        drivers_over_mileage = []
        if self.miles > distance
            driver_over_milegae << self.name 
        end
    end
end
#binding.pry


        


