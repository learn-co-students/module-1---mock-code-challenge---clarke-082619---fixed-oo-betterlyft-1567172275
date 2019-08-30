require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

pass1 = Passenger.new("Tom")

drive1 = Driver.new("Tony")

ride1 = Ride.new(drive1, pass1, 3.7)
##########

pass2 = Passenger.new("Megan")

drive2 = Driver.new("Greg")

ride2 = Ride.new(drive2, pass2, 14)
#########
pass3 = Passenger.new("Sebastian")

drive3 = Driver.new("Yoan")

ride3 = Ride.new(drive3, pass3, 2000146.39)



binding.pry


#re-check avg