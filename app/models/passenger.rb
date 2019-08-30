class Passenger
attr_reader :name
@@all = []

    def initialize(name)
        @name = name  
    end 

    def rides #Returns an array of Ride instances that this person has been on
        Ride.all.select {|rides| ride.passenger } #output P1 = [ride 2, 4, 7, ]
    end 

    def drivers #Returns an array of Driver instances that this person has rode with
        rides.all.select {|rides| rides.driver }
    end 

    def total_distance #Returns the floating num that reps the total distance the passenger has travelled using the service
        rides.all.distance {|rides| rides.distance.sum}
    end 

    def self.all
        @@all
    end 

    def self.premium_members #Returns array of all Passengers who travelled over 100 miles total

    end 

end 
