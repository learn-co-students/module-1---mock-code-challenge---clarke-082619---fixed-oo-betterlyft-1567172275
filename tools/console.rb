require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

jack = Driver.new("Jack")
yusuf = Driver.new("Yusuf")
wanda = Driver.new("Wanda")

alice = Passenger.new("Alice")
bob = Passenger.new("Bob")
charlie = Passenger.new("Charlie")

ride1 = Ride.new(alice, jack, 6.1)
ride2 = Ride.new(bob, jack, 2.2)
ride3 = Ride.new(bob, yusuf, 1.0)
ride4 = Ride.new(bob, jack, 3.5)
ride5 = Ride.new(alice, yusuf, 200.4)
ride6 = Ride.new(charlie, yusuf, 100.0)
ride7 = Ride.new(alice, wanda, 58.7)



binding.pry
