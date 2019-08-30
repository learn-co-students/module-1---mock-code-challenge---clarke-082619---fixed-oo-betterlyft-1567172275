require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger1 = Passenger.new("Ram")
passenger2 = Passenger.new("Sam")
passenger3 = Passenger.new("Dam")
passenger4 = Passenger.new("Bam")

driver1 = Driver.new("Jay")
driver2 = Driver.new("Ray")
driver3 = Driver.new("Hay")
driver4 = Driver.new("Kay")

ride1 =Ride.new(driver1, passenger1, 31)
ride2 =Ride.new(driver2, passenger2, 25)
ride3 =Ride.new(driver2, passenger4, 74)
ride4 =Ride.new(driver4, passenger4, 26)

# Put your variables here~!

binding.pry
