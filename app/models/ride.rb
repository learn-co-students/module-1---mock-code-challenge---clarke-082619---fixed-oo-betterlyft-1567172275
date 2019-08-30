require 'pry'

class Ride
    attr_accessor :passenger, :driver
    
    @@all = []

    def initialize (passenger, driver, distance, rider)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @rider = rider
        @@all << self
    end

    def passenger
        Passenger.name      # my method is wrong but the logic is that i want to essentailly grab whats in the Passengers
                            #class and make it so when i call Ride.passenger it gives the passenger
    end

    binding.pry

    def driver      #same logic as the previous method could not get either of these to work
        Driver.name
    end

    def distance    #assuming this is correct i want to call the instance @distance and return the distance at this instance
        @distance
    end

    def self.average_distance   #this is probabyl wrong logic is that i want to find the average of the distance so
                                # so i made self.distance into a variable to a variable
        miles = self.distance
            miles.average
    end

    def self.all
        @@all
    end
end 
