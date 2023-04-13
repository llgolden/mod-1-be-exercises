require 'rspec'
require './lib/boat'
require './lib/renter'

RSpec.describe Boat do
  it "exists" do
    kayak = Boat.new(:kayak, 20)
    expect(kayak).to be_a(Boat)
  end 

  it "has attributes" do
    kayak = Boat.new(:kayak, 20)

    expect(kayak.type).to eq(:kayak)
    expect(kayak.price_per_hour).to eq(20)
  end

  it "can be rented" do 
    kayak = Boat.new(:kayak, 20)

    expect(kayak.hours_rented).to eq(0)
    kayak.add_hour
    expect(kayak.hours_rented).to eq(1)
    kayak.add_hour
    expect(kayak.hours_rented).to eq(2)
    kayak.add_hour
    expect(kayak.hours_rented).to eq(3)
  end
end
