require 'rspec'
require './lib/activity'

RSpec.describe Activity do
  it "exists" do
    activity = Activity.new("Brunch")
    expect(activity).to be_an(Activity)
  end

  it "has attributes" do  
    activity = Activity.new("Brunch")

    expect(activity.name).to eq("Brunch")
    expect(activity.participants).to eq({})
    activity.add_participant("Maria", 20)
    expect(activity.participants).to eq({"Maria" => 20})
  end
  
  it "can calculate the total activity cost" do
    activity = Activity.new("Brunch")
    activity.add_participant("Maria", 20)
    expect(activity.total_cost).to eq(20)
    activity.add_participant("Luther", 40)
    expect(activity.participants).to eq({"Maria" => 20, "Luther" => 40})
    expect(activity.total_cost).to eq(60)
  end
end 
# expect().to eq()
