class Curator
  attr_reader :photographs, :artists
            
  def initialize()
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  def photographs_by_artist
    {
      artist => [photo]
    }
# iterate through the array of artists and each artist object = key
# iterate through the array of photographs and 

  end


end #final



# * `photographs_by_artist` - This method will return a hash with artists as keys, and an array of their photographs as values.
# * `artists_with_multiple_photographs` - This method returns an Array of names of artists who have more than one photograph
# * `photographs_taken_by_artists_from(string)` - This method takes a String representing a country. It returns an Array of `Photograph`s that were taken by a photographer from that country.

