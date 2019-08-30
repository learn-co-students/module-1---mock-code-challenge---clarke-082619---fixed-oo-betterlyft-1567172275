class Passenger

@@all = []
    attr_reader :name, :rides

def initialize(name)
    @name = name

    @@all << self
end

def rides  #for #rides, #drivers, and #total_distance I wasnt sure if had to create new methods or oif i could pull from other classes.
rides = [] 

end


def self.all
    @@all
end



end

