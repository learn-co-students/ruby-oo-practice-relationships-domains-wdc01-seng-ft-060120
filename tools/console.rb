require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# seattle_listing = Listing.new("123 Easy St", "Seattle")
# dc_listing = Listing.new("144 H St", "DC")
# richmond_list = Listing.new("983 Jackson Road", "Richmond")

# michael = Guest.new("Michael")
# zato = Guest.new("Zato")
# mike = Guest.new("Mike")

# seattle_michael = Trip.new(seattle_listing, michael)
# seattle_zato = Trip.new(seattle_listing, zato)
# seattle_mike = Trip.new(seattle_listing, mike)
# dc_michael = Trip.new(dc_listing, michael)


bakery_one = Bakery.new("Bakery1")
baker_two = Bakery.new("Bakery2")


Pry.start
