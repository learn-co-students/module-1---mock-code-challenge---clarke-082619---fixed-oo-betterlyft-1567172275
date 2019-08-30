class Ride
@@all = []


   
attr_accessor :driver, :passenger, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        @@all << self
    end


    
    def self.average_distance
        
    end
    
    def self.all
        @all
    end





end

