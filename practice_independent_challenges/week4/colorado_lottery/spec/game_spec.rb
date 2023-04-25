require 'rspec'
require "./lib/game"
require "./lib/contestant"

RSpec.describe Game do
  it "exists" do
    pick_4 = Game.new('Pick 4', 2)
    expect(pick_4).to be_a(Game)
  end 

  it "has attributes" do
    pick_4 = Game.new('Pick 4', 2)
    mega_millions = Game.new('Mega Millions', 5, true)
    
    expect(mega_millions.name).to eq("Mega Millions")
    expect(mega_millions.cost).to eq(5)
    expect(mega_millions.national_drawing?).to eq(true)
    expect(pick_4.national_drawing?).to eq(false)
  end
end
