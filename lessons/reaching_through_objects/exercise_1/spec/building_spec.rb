require 'rspec'
require './lib/apartment'
require './lib/room'
require './lib/building'

RSpec.describe Building do
  it "exists" do
  bldg = Building.new("623", "Savills Apartment Building")
  expect(bldg).to be_an_instance_of(Building)
  end

  it "contains apartments" do
    bldg = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new
    bldg.add_apartment(apt_1)
    bldg.add_apartment(apt_2)
    bldg.add_apartment(apt_5)
    expect(bldg.list_apartments).to eq([apt_1, apt_2, apt_5])
  end
end