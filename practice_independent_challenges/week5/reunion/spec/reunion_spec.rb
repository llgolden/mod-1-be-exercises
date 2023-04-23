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

  it "can calculate the reunion total cost" do  
    reunion = Reunion.new("1406 BE")
    activity_1 = Activity.new("Brunch")
    reunion.add_activity(activity_1)
    expect(reunion.activities).to eq([activity_1])
    activity_1.add_participant("Maria", 20)
    activity_1.add_participant("Luther", 40)
    expect(reunion.total_cost).to eq(60)
  end

  it "can create a breakout report" do  
    reunion = Reunion.new("1406 BE")
    activity_1 = Activity.new("Brunch")
    reunion.add_activity(activity_1)
    activity_1.add_participant("Maria", 20)
    activity_1.add_participant("Luther", 40)

    activity_2 = Activity.new("Drinks")
    activity_2.add_participant("Maria", 60)
    activity_2.add_participant("Luther", 60)
    activity_2.add_participant("Louis", 0)
    reunion.add_activity(activity_2)
    expect(reunion.total_cost).to eq(180)
    expect(reunion.breakout).to eq({"Maria" => -10, "Luther" => -30, "Louis" => 40})
  end

  it "can print a summary" do  
    reunion = Reunion.new("1406 BE")
    activity_1 = Activity.new("Brunch")
    reunion.add_activity(activity_1)
    activity_1.add_participant("Maria", 20)
    activity_1.add_participant("Luther", 40)

    activity_2 = Activity.new("Drinks")
    activity_2.add_participant("Maria", 60)
    activity_2.add_participant("Luther", 60)
    activity_2.add_participant("Louis", 0)
    reunion.add_activity(activity_2)
    expect(reunion.summary).to eq("Maria: -10\nLuther: -30\nLouis: 40")
    puts reunion.summary
  end
end
