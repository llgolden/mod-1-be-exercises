require 'rspec'
require './lib/photograph'
require './lib/artist'
require './lib/curator'

RSpec.describe Curator do
  it "exists" do
    curator = Curator.new 
    expect(curator).to be_a(Curator)
  end

  it "has attributes" do  
    curator = Curator.new 
    expect(curator.photographs).to eq([])
    expect(curator.artists).to eq([])
  end

  it "can contain photographs" do
    curator = Curator.new 
    photo_1 = Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"      
})        
    photo_2 = Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"      
})  

    curator.add_photograph(photo_1)
    curator.add_photograph(photo_2)
    expect(curator.photographs).to eq([photo_1, photo_2])
  end

  it "can contain artists" do 
    curator = Curator.new 
    artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    })      
    artist_2 = Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })        

    curator.add_artist(artist_1)
    curator.add_artist(artist_2)
    expect(curator.artists).to eq([artist_1, artist_2])
    
    expect(curator.find_artist_by_id("1")).to eq(artist_1)
    expect(curator.find_artist_by_id("2")).to eq(artist_2)
  end

end 
