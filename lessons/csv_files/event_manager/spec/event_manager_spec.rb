require 'pry'
require 'rspec'
require './lib/attendee'
require './lib/event_manager'
require "csv"

describe EventManager do

  before :each do
  File.read "event_attendees.csv"
  #   emanager = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
  end

  it "exists" do
    emanager = 
    # File.exist? "event_attendees.csv"
    expect(emanager).to be_a(File)

  end

  xit "can identify attendees names" do 

require 'pry'; binding.pry
    expect(emanager.name_finder).to eq(["Allison"])
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
