require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passenger1 = Passenger.new("Steve")
passenger2 = Passenger.new("Roger")

driver1 = Driver.new("Tony")

ride1 = Ride.new(passenger1, driver1, 99.0)
ride2 = Ride.new(passenger2, driver1, 101.0)

binding.pry
