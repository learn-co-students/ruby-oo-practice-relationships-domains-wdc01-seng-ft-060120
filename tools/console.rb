require_relative '../config/environment.rb'

=begin
guests = []
guests << Guest.new("steve")
guests << Guest.new("Tien")
guests << Guest.new("Bob")

listings = []
listings << Listing.new("100 n st", "Philadelphia")
listings << Listing.new("500 n walnut st", "Philadelphia")
listings << Listing.new("101 n maple ave", "Miami")

trips = []
#guest,listing,date
trips << Trip.new(guests[0],listings[0],"5/4/2020")
trips << Trip.new(guests[0],listings[1],"5/6/2020")
trips << Trip.new(guests[1],listings[1],"10/1/2010")
trips << Trip.new(guests[2],listings[0],"5/1/2011")
trips << Trip.new(guests[0],listings[2],"1/2/2012")

puts "List of Trips"
trips.each{|trip|puts trip}

puts "Listing.trips returns all listings"
test = listings[0].trips
puts ([trips[0],trips[3]] == test)

puts "Listing.trip_count"
first_count = listings[0].trip_count 
Trip.new(guests[0],listings[0],"1/5/1999")
puts (first_count == listings[0].trip_count - 1)

puts "Listing.guests shows all guests at listing"
sarah = Guest.new("Sarah")
puts !listings[0].guests.include?(sarah)
Trip.new(sarah,listings[0],"12/2/1950")
puts listings[0].guests.include?(sarah)

puts "Listing.find_all_by_city can find all listings"\
      "from Philadelphia"
puts Listing.find_all_by_city("Philadelphia") == \
      [listings[0],listings[1]]
reed_st_101 = Listing.new("101 reed st", "Philadelphia")
puts (Listing.find_all_by_city("Philadelphia").include? \
  reed_st_101)

def doNothing
end

puts "Listing.most_popular can return a single listing that is most Popular"
puts Listing.most_popular == listings[0]

listings.each{|list| puts "#{list.trip_count} x #{list.street_name}"}
puts "adding 2 listing[1] to trip"
Trip.new(guests[0],listings[1],"5/1/1999")
Trip.new(guests[1],listings[1],"6/5/1940")

listings.each{|list| puts "#{list.trip_count} x #{list.street_name}"}
puts "From most_popular:"
puts Listing.most_popular
puts "most_pop_array"
puts Listing.most_popular_array

puts"Testing trip count"
puts Guest.pro_traveller.include? guests[0]
puts Guest.pro_traveller.include? guests[1]

puts"find_all_by_name can find by a single name"
puts Guest.find_all_by_name("Bob").include? guests[2]
puts "adding a 2nd bob"
Guest.new("Bob")
puts"find_all_by_name can find arr of Guest w/ matching name"
finder = Guest.find_all_by_name("Bob")
puts finder[0].name == "Bob" && finder[1].name == "Bob"
=end

passengers = []
passengers << steve = (Passenger.new("Steve"))
passengers << tien = (Passenger.new("Tien"))
passengers << bob = (Passenger.new("Bob"))

drivers = []
drivers << Driver.new("Donny")
drivers << Driver.new("Lonny")
drivers << Driver.new("Tony")

rides = []
#guest,listing,date
rides << Ride.new(50, passengers[0], drivers[0])
rides << Ride.new(75, passengers[0], drivers[0])
rides << Ride.new(80, passengers[1], drivers[1])
rides << Ride.new(100, passengers[1], drivers[2])
rides << Ride.new(20, passengers[2], drivers[2])

puts "List of Rides"
rides.each{|ride|puts ride}

puts "Drivers.rides returns all drivers"
test = drivers[0].rides
puts ([rides[0],rides[1]] == test)

puts "Driver.passengers shows all passengers at driver"
sarah = Passenger.new("Sarah")
puts !drivers[0].passengers.include?(sarah)
rides << Ride.new(150,sarah,drivers[0])
puts drivers[0].passengers.include?(sarah)





=begin
puts "Listing.find_all_by_city can find all listings"\
      "from Philadelphia"
puts Listing.find_all_by_city("Philadelphia") == \
      [listings[0],listings[1]]
reed_st_101 = Listing.new("101 reed st", "Philadelphia")
puts (Listing.find_all_by_city("Philadelphia").include? \
  reed_st_101)

puts "Listing.most_popular can return a single listing that is most Popular"
puts Listing.most_popular == listings[0]

listings.each{|list| puts "#{list.trip_count} x #{list.street_name}"}
puts "adding 2 listing[1] to trip"
Trip.new(guests[0],listings[1],"5/1/1999")
Trip.new(guests[1],listings[1],"6/5/1940")

listings.each{|list| puts "#{list.trip_count} x #{list.street_name}"}
puts "From most_popular:"
puts Listing.most_popular
puts "most_pop_array"
puts Listing.most_popular_array

puts"Testing trip count"
puts Guest.pro_traveller.include? guests[0]
puts Guest.pro_traveller.include? guests[1]

puts"find_all_by_name can find by a single name"
puts Guest.find_all_by_name("Bob").include? guests[2]
puts "adding a 2nd bob"
Guest.new("Bob")
puts"find_all_by_name can find arr of Guest w/ matching name"
finder = Guest.find_all_by_name("Bob")
puts finder[0].name == "Bob" && finder[1].name == "Bob"
=end

def reload
  load 'config/environment.rb'
end

Pry.start


