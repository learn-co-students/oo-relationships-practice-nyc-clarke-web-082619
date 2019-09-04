require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

list1 = Listing.new("Cozy Bungalow", "Tennessee")
list2 = Listing.new("Artist's Retreat", "Manhattan")
list3 = Listing.new("Quiet Getaway", "Hudson Valley")
list4 = Listing.new("Ocean View", "Los Angeles")
list5 = Listing.new("Sunset Paradise", "Los Angeles")

guest1 = Guest.new("Tom")
guest2 = Guest.new("Jasmin")
guest3 = Guest.new("Elise")
guest4 = Guest.new("Quarry")
guest5 = Guest.new("Shazam")
guest6 = Guest.new("Morgan")
guest7 = Guest.new("Slorgan")
guest8 = Guest.new("Coral")
guest9 = Guest.new("Sam")
guest10 = Guest.new("Flounder")



Trip1 = Trip.new(guest1, list2)
Trip2 = Trip.new(guest2, list4)
Trip3 = Trip.new(guest3, list1)
Trip4 = Trip.new(guest4, list5)
Trip5 = Trip.new(guest5, list3)
Trip6 = Trip.new(guest6, list3)
Trip7 = Trip.new(guest7, list3)
Trip8 = Trip.new(guest8, list2)
Trip9 = Trip.new(guest8, list1)
Trip10 = Trip.new(guest9, list4)
Trip11 = Trip.new(guest10, list5)









binding.pry
0