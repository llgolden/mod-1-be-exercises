require 'rspec'
require './lib/apartment'
require './lib/room'

RSpec.describe Apartment do
  it "can create an apartment" do
  apartment = Apartment.new
  expect(apartment).to be_an_instance_of(Apartment)
  expect(apartment.is_rented?).to eq(false)
  apartment.rent 
  expect(apartment.is_rented?).to eq(true)
  end

  it "can contain a room" do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")
    apartment.add_room(bathroom)
    expect(apartment.rooms).to eq([bathroom])
  end

  it "can contain multiple rooms" do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")
    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))
   #     apartment.rooms - do we need an expect statment for this, if so how?
    # expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])


  end
end

