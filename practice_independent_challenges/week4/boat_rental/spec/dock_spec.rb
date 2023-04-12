
## Iteration 2

Use TDD to create a `Dock` class. It should have the following methods:

* `rent` - this method takes a `Boat` and a `Renter` as arguments. Calling this method signifies that the `Boat` has been rented by the `Renter`.
* `rental_log` - this method returns a hash that associates a `Boat` with the `Renter` that rented it.



ruby
pry(main)> require './lib/dock'
# => true

pry(main)> require './lib/renter'
# => true

pry(main)> require './lib/boat'
# => true

pry(main)> dock = Dock.new("The Rowing Dock", 3)    
# => #<Dock:0x00007fdeedb0a788...>

pry(main)> dock.name
# => "The Rowing Dock"

pry(main)> dock.max_rental_time
# => 3

pry(main)> kayak_1 = Boat.new(:kayak, 20)
# => #<Boat:0x00007fdeedb3a528...>

pry(main)> kayak_2 = Boat.new(:kayak, 20)    
# => #<Boat:0x00007fdeedae1860...>

pry(main)> sup_1 = Boat.new(:standup_paddle_board, 15)
# => #<Boat:0x00007fdeedaa8bc8...>

pry(main)> patrick = Renter.new("Patrick Star", "4242424242424242")    
# => #<Renter:0x00007fdeed0ab828...>

pry(main)> eugene = Renter.new("Eugene Crabs", "1313131313131313")    
# => #<Renter:0x00007fdeed8ce5c8...>

pry(main)> dock.rent(kayak_1, patrick)    

pry(main)> dock.rent(kayak_2, patrick)    

pry(main)> dock.rent(sup_1, eugene)    

pry(main)> dock.rental_log
# =>
# {
#   #<Boat:0x00007fdeedb3a528...> => #<Renter:0x00007fdeed0ab828...>,
#   #<Boat:0x00007fdeedae1860...> => #<Renter:0x00007fdeed0ab828...>,
#   #<Boat:0x00007fdeedaa8bc8...> => #<Renter:0x00007fdeed8ce5c8...>
# }