require_relative '../config/environment.rb'
# require_relative 'app/models/driver'
# require_relative 'app/models/passenger'
# require_relative 'app/models/ride'

def reload
  load 'config/environment.rb'
end


passenger1 = Passenger.new("Ram")
passenger2 = Passenger.new("Sam")
passenger3 = Passenger.new("Ham")

driver1 = Driver.new("Fred")
driver2 = Driver.new("Ted")
driver3 = Driver.new("Jed")

ride1 = Ride.new("Fred", "Ham", "3.8")
ride2 = Ride.new("Jed", "Sam", "2.0")
ride3 = Ride.new("Fred", "Sam", "1.9")
ride4 = Ride.new("Jed", "Ram", "32.0")

binding.pry
