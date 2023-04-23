require 'rspec'
require './lib/activity'
require './lib/reunion'

RSpec.describe Reunion do
  it "exists" do
    reunion = Reunion.new("1406 BE")
    expect(reunion).to be_a(Reunion)
  end

  it "has attributes" do  
    reunion = Reunion.new("1406 BE")
    expect(reunion.name).to eq("1406 BE")
    expect(reunion.activities).to eq([])
  end

  it "can have activities" do  
    reunion = Reunion.new("1406 BE")
    activity_1 = Activity.new("Brunch")
    reunion.add_activity(activity_1)
    expect(reunion.activities).to eq([activity_1])
  end
end
# expect().to eq()