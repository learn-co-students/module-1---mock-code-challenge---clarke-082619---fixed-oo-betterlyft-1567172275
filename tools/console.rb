require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver1 = Driver.new("bob1")
driver2 = Driver.new("bob2")
driver3 = Driver.new("bob3")
driver4 = Driver.new("bob4")

passenger1 = Passenger.new("bobbie1")
passenger2 = Passenger.new("bobbie2")
passenger3 = Passenger.new("bobbie3")
passenger4 = Passenger.new("bobbie4")

ride1 = Ride.new(driver1, passenger1, 100)
ride2 = Ride.new(driver2, passenger1, 102)
ride3 = Ride.new(driver1, passenger2, 1643)
ride4 = Ride.new(driver1, passenger1, 103)


binding.pry
