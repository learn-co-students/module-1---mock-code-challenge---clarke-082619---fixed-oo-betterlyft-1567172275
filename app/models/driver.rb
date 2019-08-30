class Driver

    attr_reader :name, :passenger_name, :ride
    
    @@passengers = []
    @@rides = []
   
    def initialize (name)
        @name = name
    end

    def passenger(name, ride)  #i made this method to make a passenger in the Driver class because i didnt think I could pull from other classes
        @passenger_name = name 
        @ride = ride
    
        @@passengers << self  #this is me trying to push each passenger entry into the emopty array..?
    end

    def passenger_names
        @@passengers.uniq 
    end

    def self.passengers
        @@passengers
    end


end

