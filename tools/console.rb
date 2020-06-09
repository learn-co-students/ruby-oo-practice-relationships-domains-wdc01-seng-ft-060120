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


# bakery_one = Bakery.new("Bakery1")
# bakery_two = Bakery.new("Bakery2")

# dessert_one = Dessert.new("Cake", bakery_one)
# dessert_two = Dessert.new("Pie", bakery_two)
# dessert_three = Dessert.new("Oreo", bakery_one)

# ingredient_cake_one = Ingredient.new("Batter", dessert_one, 100)
# ingredient_cake_two = Ingredient.new("Cream", dessert_one, 250)
# ingredient_pie_one = Ingredient.new("Crust", dessert_two, 105)
# ingredient_oreo_one = Ingredient.new("cookie", dessert_three, 25)


# driver_one = Driver.new("Michael")
# driver_two = Driver.new("Fabi")
# passenger_one = Passenger.new("John")
# passenger_two = Passenger.new("Jack")

# trip_one = Ride.new(driver_one, passenger_one, 100)
# trip_two = Ride.new(driver_one, passenger_two, 12)
# trip_three = Ride.new(driver_two, passenger_one, 15)


# Getting a list of actors
john = Actor.new("John")
jack = Actor.new("Jack")
mary = Actor.new("Mary")
mike = Actor.new("Mike")
henry = Actor.new("Henry")
jim = Actor.new("Jim")
brian = Actor.new("Brian")
jeff = Actor.new("Jeff")
jazz = Actor.new("Jazz")
hillary = Actor.new("Hillary")

# Getting three characters for each actor
aang = Character.new("Aang", john)
sokka = Character.new("Sokka", jack)
katara = Character.new("Katara", mary)
appa = Character.new("Appa", mike)
zuko = Character.new("Henry", henry)
ozai = Character.new("Ozai", jim)
momo = Character.new("Momo", brian)
iroh = Character.new("Iroh", jeff)
jet = Character.new("Jet", jazz)
toph = Character.new("Toph", hillary)
#---
stan = Character.new("Stan", john)
kyle = Character.new("Kyle", jack)
wendy = Character.new("Wendy", mary)
eric = Character.new("Eric", mike)
kenny = Character.new("Kenny", henry)
butters = Character.new("Butters", jim)
clyde = Character.new("Clyde", brian)
randy = Character.new("Randy", jeff)
craig = Character.new("Craig", jazz)
bebe = Character.new("Bebe", hillary)

# Creating shows
avatar = Show.new("Avatar The Last Airbender")
korra = Show.new("Legend of Korra")
south_park = Show.new("South Park")

# Creating show_character
#--avatar
avatar_x_aang = ShowCharacter.new(avatar, aang)
avatar_x_sokka = ShowCharacter.new(avatar, sokka)
avatar_x_katara = ShowCharacter.new(avatar, katara)
avatar_x_appa = ShowCharacter.new(avatar, appa)
avatar_x_zuko = ShowCharacter.new(avatar, zuko)
avatar_x_ozai = ShowCharacter.new(avatar, ozai)
avatar_x_momo = ShowCharacter.new(avatar, momo)
avatar_x_iroh = ShowCharacter.new(avatar, iroh)
avatar_x_jet = ShowCharacter.new(avatar, jet)
avatar_x_toph = ShowCharacter.new(avatar, toph)
#--korra
korra_x_aang = ShowCharacter.new(korra, aang)
korra_x_toph = ShowCharacter.new(korra, toph)
korra_x_sokka = ShowCharacter.new(korra, sokka)
#--sp
south_park_x_stan = ShowCharacter.new(avatar, stan)
south_park_x_kyle = ShowCharacter.new(avatar, kyle)
south_park_x_wendy = ShowCharacter.new(avatar, wendy)
south_park_x_eric = ShowCharacter.new(avatar, eric)
south_park_x_kenny = ShowCharacter.new(avatar, kenny)
south_park_x_butters = ShowCharacter.new(avatar, butters)
south_park_x_clyde = ShowCharacter.new(avatar, clyde)
south_park_x_randy = ShowCharacter.new(avatar, randy)
south_park_x_craig = ShowCharacter.new(avatar, craig)
south_park_x_bebe = ShowCharacter.new(avatar, bebe)

# Creating movies
live_avatar = Movie.new("Avatar The Last Airbender")
bigger = Movie.new("South Park Bigger")

# Creating movie_character
#--avatar_live
avatar_live_x_aang = MovieCharacter.new(live_avatar, aang)
avatar_live_x_sokka = MovieCharacter.new(live_avatar, sokka)
avatar_live_x_katara = MovieCharacter.new(live_avatar, katara)
avatar_live_x_appa = MovieCharacter.new(live_avatar, appa)
avatar_live_x_zuko = MovieCharacter.new(live_avatar, zuko)
avatar_live_x_momo = MovieCharacter.new(live_avatar, momo)
avatar_live_x_toph = MovieCharacter.new(live_avatar, toph)
#--sp
bigger_x_stan = MovieCharacter.new(bigger, stan)
bigger_x_eric = MovieCharacter.new(bigger, eric)
bigger_x_kenny = MovieCharacter.new(bigger, kenny)
bigger_x_kyle = MovieCharacter.new(bigger, kyle)

Pry.start
