
class Passenger

    attr_accessor :name, :rides, :drivers, :total_distance
    @@all = []

    def initialize(name)
        @name = name
        @rides = rides
        @drivers = drivers
        @total_distance = total_distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.premium_members
        premium = Ride.all.select { |ride| ride.distance > 100.0 }
    end

end