class Ride

  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    total_miles = self.all.map{|ride| ride.distance}.reduce(&:+)
    total_miles.to_f / self.all.length 
  end
end
