require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

pass1 = Passenger.new('Dave')
pass2 = Passenger.new('Leslie')
pass3 = Passenger.new('Eric')
pass4 = Passenger.new('Bebe')
pass5 = Passenger.new('Paul')

driver1 = Driver.new('Tina')
driver2 = Driver.new('Bill')
driver3 = Driver.new('Steff')
driver4 = Driver.new('Greg')
driver5 = Driver.new('Sheryl')

ride1 = Ride.new(driver1, pass1, 20.0)
ride2 = Ride.new(driver2, pass2, 50.0)
ride3 = Ride.new(driver3, pass3, 102.0)
ride4 = Ride.new(driver4, pass4, 204.0)
ride5 = Ride.new(driver5, pass5, 75.0)
ride6 = Ride.new(driver1, pass1, 120.0)
ride6 = Ride.new(driver1, pass2, 77.0)
ride5 = Ride.new(driver1, pass1, 104.0)


binding.pry
