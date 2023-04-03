require 'rspec'
require './lib/room'

RSpec.describe Room do
  it "can create a room" do
  bathroom = Room.new("bathroom")
  expect(bathroom.name).to eq("bathroom")
  end
end


