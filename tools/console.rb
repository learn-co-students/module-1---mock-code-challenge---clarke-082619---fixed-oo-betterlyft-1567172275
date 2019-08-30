require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end




passenger1 = Passenger.new("Evan")
passenger2 = Passenger.new("Jim")
passenger3 = Passenger.new("Joe")


ride1 = Ride.new("Driver", "P", 3.2)

binding.pry

