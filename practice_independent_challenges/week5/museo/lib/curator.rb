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

  # def photographs_by_artist
  #   artists_photos = {} 
  #   @photographs.select do |photo|
  #       if artists_photos[photo.artist_id]
  #         artists_photos[photo.artist_id] = [photo] << photo
  #       else
  #         artists_photos[photo.artist_id] = [photo]
  #       end
  #   end
  #   @artists.select do |artist|
  #     artists_photos.select do |photo|
  #       if photo == artist.id
  #         artists_photos[artist.id] = artists_photos.delete photo
  #       end
  #     end
  #   end
  #   artists_photos
  #   require 'pry'; binding.pry
  # end

  # def photographs_by_artist
  #   artists_photos = {}
  #   @artists.each do |artist|
  #     artists_photos[artist] = []
  #   end
  #   artist1 = []
  #   artist2 = []
  #   artist3 = []
  #   @photographs.each do |photo|
  #     if photo.artist_id == "1"
  #       artist1.push(photo)
  #     elsif photo.artist_id == "2"
  #       artist2.push(photo)
  #     else 
  #       artist3.push(photo)
  #       require 'pry'; binding.pry 
  #     end
  #   end
  # end

  def photographs_by_artist
    artists_photos = {}
    @photographs.each do |photo|
      artist = @artists.find { |a| a.id == photo.artist_id }
      artists_photos[artist] ||= []
      artists_photos[artist] << photo
    end
    artists_photos
  end

    # hash[:new_key] = hash.delete :old_key

# iterate through the array of artists and each artist object = key
# iterate through the array of photographs and 

def artists_with_multiple_photographs

end


end #final



# * `photographs_by_artist` - This method will return a hash with artists as keys, and an array of their photographs as values.
# * `artists_with_multiple_photographs` - This method returns an Array of names of artists who have more than one photograph
# * `photographs_taken_by_artists_from(string)` - This method takes a String representing a country. It returns an Array of `Photograph`s that were taken by a photographer from that country.

