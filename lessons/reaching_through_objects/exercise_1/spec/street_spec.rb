require 'rspec'
require './lib/apartment'
require './lib/room'
require './lib/building'
require './lib/street'

RSpec.describe Street do
  it "exists" do
  adlington = Street.new("Adlington Road")
  expect(adlington).to be_an_instance_of(Street)
  end

  it "can add buildings" do
  adlington = Street.new("Adlington Road")
  savills = Building.new("623", "Savills Apartment Building")
  adlington.add_building(savills)
  zebra = Building.new("123", "Zebra Apartments")
  adlington.add_building(zebra)
  require 'pry'; binding.pry
  expect(adlington.buildings).to eq(["Savills Apartment Building", "Zebra Apartments"])
  end

  xit "can can check the number of available apartments" do
    adlington = Street.new("Adlington Road")
    savills = Building.new("623", "Savills Apartment Building")
    adlington.add_building(savills)
    zebra = Building.new("123", "Zebra Apartments")
    adlington.add_building(zebra)
    expect(adlington.number_of_available_apartments).to eq(3)
  end
  # The building objects already have access to apartments and are already available in this class. 
  # building.

#   #### Note!
#   For this method, think about the following:
#   - What object already has access to an `Apartment`?
#     Is that object available in `Street`?
#   - What is the _shortest, most efficient_ way to get the data you need?
#   - Pseudocode out your approach in your `spec` file first, in comments, before writing any tests or code. Revisit your pseudocode when you get stuck.




# 5.  The `Street` should also be able to list the names of the `Buildings` that have available (non-rented) `Apartments`, and the names of the `Rooms` in each available `Apartment`.
# Example:
# ```
# adlington.list_available_apartments
# # =>
# {
#   "Zebra Apartments" => ["bedroom", "laundry"]
#   "Savills Apartment Building" => ["bathroom", "bedroom", "kitchen", "laundry"]
#   "Savills Apartment Building" => ["bathroom", "bedroom", "laundry"]
# }
# ```

# -------

# * A stretch goal for you might be - your `Street` should be able to print a _newspaper advertisement_ for each available apartment. You should use the `list_available_apartments` method to achieve this functionality.
# It should read something like:

# ```
# Zebra Apartments has 1 available apartment!
# This apartment has 2 rooms including bedroom and laundry.
# ```

# ```
# Savills Apartment Building has 2 available apartments!
# Apartment 1 has bathroom, bedroom, kitchen, and laundry.
# Apartment 2 has bathroom, bedroom, and laundry.
# ```


end



