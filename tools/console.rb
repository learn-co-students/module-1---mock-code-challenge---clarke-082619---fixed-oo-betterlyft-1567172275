require "pry"
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver1 = Driver.new("Andrew")
driver2 = Driver.new("John")
driver3 = Driver.new("Sam")

passenger1 = Passenger.new("Brian")
passenger2 = Passenger.new("Tom")
passenger3 = Passenger.new("Alex")


binding.pry
