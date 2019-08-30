require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver1 = Driver.new("Allen")
driver2 = Driver.new("Joan")
driver3 = Driver.new("BB")

passenger1 = Passenger.new("Amy")
passenger2 = Passenger.new("Leo")

ride1 = Ride.new(driver1, passenger1, 1.5)
ride2 = Ride.new(driver1, passenger2, 3.4)
ride3 = Ride.new(driver2, passenger2, 110.1)
ride4 = Ride.new(driver1, passenger1, 120.5)
ride5 = Ride.new(driver3, passenger2, 50.0)
ride6 = Ride.new(driver3, passenger1, 51.0)

binding.pry
