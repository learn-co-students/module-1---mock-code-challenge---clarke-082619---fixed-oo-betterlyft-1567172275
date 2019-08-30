class Passenger 

    attr_accessor :name
    @@all = []
    def initialize (name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select {|rides| rides.passenger == self}
    end

    def drivers
        rides.map {|rides| rides.driver}
    end

    def total_distance 
        total = 0
        rides.each{|rides| total += rides.distance}
        total
    end

    def self.all 
        @@all
    end

    def self.premium_members
        @@all.select{|passenger| passenger.total_distance > 100}.uniq
    end

end


