class Driver
    attr_reader = :name

    @@drivers = []

    def initialize(name)
        @name = name
        @@drivers << self
    end

    def passenger_names
        self.passenger
    end

    def rides
        self.rides
    end

    def self.all
        @@drivers
    end

    def mileage_cap(milage)
        
    end

end
