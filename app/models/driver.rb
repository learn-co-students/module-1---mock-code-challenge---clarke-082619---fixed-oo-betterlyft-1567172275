class Driver 
attr_reader :name
@@all = []

    def initialize(name)
        @name = name 
    end 

    def rides #Returns an array of all Rides a driver has made
        Ride.all.select {|rides| rides.driver } 
        # @@all << all_rides 
    end

    def passenger_names #Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
        Ride.all.select do |rides| 
           rides.passenger  
        end
    end 

    def self.all
        @@all
    end 

    def self.mileage_cap(distance) #returns an array of all Drivers who have driven over the mileage

    end 
end 
