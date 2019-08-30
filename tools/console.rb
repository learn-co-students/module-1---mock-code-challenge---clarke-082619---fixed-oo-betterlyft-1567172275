require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cees = Passenger.new("Cees") 
amber = Passenger.new("Amber")
ken = Passenger.new("Ken")

sebastian = Driver.new("Sebastian")
yoan = Driver.new("Yoan")
tommy = Driver.new("Tommy")

tokyo = Ride.new(sebastian,cees,500)
madrid = Ride.new(yoan, amber, 80)
shanghai = Ride.new(tommy, ken, 399)
binding.pry
