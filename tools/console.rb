require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger1 = Passenger.new("Tom")
passenger2 = Passenger.new("Toney")
passenger3 = Passenger.new("Jake")

driver1 = Driver.new("Tim")
driver2 = Driver.new("Britanny")
driver3 = Driver.new("Foo")

ride1 = Ride.new(driver1, passenger1, 100.2)
ride2 = Ride.new(driver2, passenger2, 50.2)
ride3 = Ride.new(driver3, passenger3, 70.7)
ride4 = Ride.new(driver1, passenger1, 80.9)
ride5 = Ride.new(driver2, passenger2, 20.2)



binding.pry
