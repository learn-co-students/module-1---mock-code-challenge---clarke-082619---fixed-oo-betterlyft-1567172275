class Passenger
    attr_accessor :name
    @@all = [] #all passengers
    def initialize (name)
        @name = name 
        @@all << self    # add passenger to all passengers
    end

    def rides
        arr = []
        Ride.all.each do |ride|                 # go through all rides
            if ride.passenger.name == self.name # if names are the same them add that ride to array 
                arr << ride
            end
        end
        arr  
    end

    def drivers
        arr = []
        Ride.all.each do |ride|                 # go through all rides
            if ride.passenger.name == self.name # if names are the same add the driver to the array
                arr << ride.driver
            end
        end
        arr 
    end

    def total_distance
        sum = 0
        Ride.all.each do |ride| 
            if ride.passenger.name == self.name
                sum += ride.distance
            end
        end
        sum 
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select {|passenger| passenger.total_distance > 100} # go through all passengers
    end
end