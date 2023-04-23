require 'pry'
require 'rspec'
require './lib/attendee'
require './lib/event_manager'
require "csv"

RSpec.describe EventManager do
  describe "#event attendee csv" do

    before(:each) do
      @event = EventManager.new("./data/event_attendees.csv")
    end

    it "exists" do
      expect(event).to be_an(EventManager)
    end

    xit "can identify attendees names" do 

  require 'pry'; binding.pry
      expect(emanager.name_finder).to eq(["Allison"])
    end 

  end
end


# it 'x' do
#   expect().to eq()

# end

# ### Part II

# Create an `EventManager` class that performs the following tasks:

#  * reads file contents and accesses columns by name using the CSV Library
#  * creates an array of `Attendee` objects as specified in **Part I**
#  * displays each `Attendee` as specified in **Part I**
