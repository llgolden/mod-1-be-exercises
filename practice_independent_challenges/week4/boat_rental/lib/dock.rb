class Dock
  attr_reader :name, :max_rental_time, :rental_log
            
  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    amount_charged = if boat.hours_rented <= @max_rental_time
      boat.hours_rented * boat.price_per_hour
    else 
      @max_rental_time * boat.price_per_hour
    end
    {:card_number => @rental_log[boat].credit_card_number, 
    :amount => amount_charged}
  end

end


# Use TDD to implement a `Dock#charge` method:

# * This method takes a `Boat` as an argument
# * This method returns a hash with two key/value pairs:
#   * The key `:card_number` points to the credit card number of the `Renter` that rented the boat
#   * The key `:amount` points to the amount that should be charged. The amount is calculated by multiplying the Boat's price_per_hour by the number of hours it was rented. However, any hours past the Dock's max_rental_time should not be counted. So if a Boat is rented for 4 hours, and the max_rental_time is 3, the charge should only be for 3 hours.