class Driver 

    attr_accessor :name, :passenger_names, :rides 

    @@all = []

    def initialize(name)
        @name = name

        @@all << name 
    end 

    def name 

    end 

    def passenger_names 

    end 

    def rides

    end 

    def self.all 
        @@all
    end 

    def self.mileage_cap(distance)
        
    end 

end 
