require 'pry'

require_relative 'models/ride.rb'       #everyone of these were not correct i tried debugging code
require_relative 'models/driver.rb'      
require_relative 'models/passenger.rb'

rider1 = Passenger.new("Ken")
rider2 = Passenger.new("Mr. Poopy Head")
rider3 = Passenger.new("Josie")

driver1 = Driver.new("Ling Ling")
driver2 = Driver.new("Mohammed")
driver3 = Driver.new("Vinny")

binding.pry