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
  
  def artists_with_multiple_photographs
    all_artists = []
    artist_mult_photos = []
    photographs.each do |photo|
      all_artists << photo.artist_id
    end
    all_artists.each do |artist|
      artist_mult_photos << artist if all_artists.count(artist) > 1  
    end
    artist_name = [@artists.find {|artist| artist.id == artist_mult_photos[0]}.name]
  end

  def photographs_taken_by_artist_from(country)
    @photographs.select do |photo|
      artist = @artists.find { |artist| artist.id == photo.artist_id }
      artist.country == country
    end
  end

end #final
