class Ride 
attr_accessor :distance 
attr_reader :driver, :passenger 

@@all = []

    def initialize(driver, passenger, distance)
        @driver = driver 
        @passenger = passenger
        @distance = distance 
        @@all << self 
    end 

    def self.average_distance #average of all rides 
        self.all.select do |ride|
            ride.distance.each do |distance|
                distance.sum / distance.count
            end 
        end  
    end 

    def self.all
        @@all
    end 

end 
