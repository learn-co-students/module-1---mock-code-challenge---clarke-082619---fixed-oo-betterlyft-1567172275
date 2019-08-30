class Driver

  attr_accessor :name 
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select{|ride| ride.driver == self}
  end

  def passenger_names
    rides.map{|ride| ride.passenger.name}.uniq
  end

  def self.all
    @@all 
  end

  def self.mileage_cap(distance_cap)
    Ride.all.select{|ride| ride.driver if ride.distance > distance_cap}
  end
end
