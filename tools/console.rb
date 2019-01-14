require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end





# Put your variables here~!
g1 = Guest.new("Joe")
g2 = Guest.new("Doe")
g3 = Guest.new("Moe")
l1 = Listing.new("New York")
l2 = Listing.new("Old York")
l3 = Listing.new("York")
t1 = Trip.new(g1, l1, 5)
t2 = Trip.new(g1, l2, 2)
t3 = Trip.new(g1, l3, 73)
t4 = Trip.new(g2, l2, 3)
t5 = Trip.new(g3, l2, 7)
t6 = Trip.new(g2, l2, 56)
binding.pry
