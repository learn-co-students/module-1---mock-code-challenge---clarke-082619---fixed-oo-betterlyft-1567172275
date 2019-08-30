class Passenger 

    attr_accessor :name, :rides, :drivers, :total_distance

    @@all = []

    def initialize(name)
        @name = name

        @@all << name 
    end 

    def name 
        @name 
    end 

    def rides 
        @ride = []
        @ride << self 
    end 

    def drivers 

    end 

    def total_distance

    end 

    def self.all 
        @@all
    end 

    def self.premium_members
        if @total_distance > 100
        end

    end 

end 
