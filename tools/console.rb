require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("Alice")
p2 = Passenger.new("Bob")
p3 = Passenger.new("Charlie")

d1 = Driver.new("Danny")
d2 = Driver.new("Eric")
d3 = Driver.new("Fred")

r1 = Ride.new(d1, p1, 1.6)
r2 = Ride.new(d1, p1, 5.5)
r3 = Ride.new(d2, p2, 3.1)
r4 = Ride.new(d3, p3, 11.66)
r5 = Ride.new(d1, p3, 9.3)
r6 = Ride.new(d2, p1, 100.4)
# Put your variables here~!

binding.pry
