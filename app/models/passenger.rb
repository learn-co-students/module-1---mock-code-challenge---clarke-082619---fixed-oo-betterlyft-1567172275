class Passenger
  attr_reader :name 
  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end

  def rides 
    Ride.all.select{|ride| ride.passenger == self}
  end

  def drivers
    rides.map{|ride|ride.driver}
  end

  def total_distance
    rides.map{|ride| ride.distance}.reduce(&:+)
  end

  def self.all 
  @@all 
  end

  def self.premium_members
    self.all.select{|pass| pass.total_distance > 100}
  end

end
