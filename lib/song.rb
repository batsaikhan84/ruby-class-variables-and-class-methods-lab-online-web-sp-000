class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_counter = {}
  @@genre_counter = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genres.each do |element|
      value = 0
      if @@genre_counter.keys.include?(element)
        value += 1
        @@genre_counter[element] = value
      else 
        @@genre_counter[element] = 1
      end
    end
  end
  
  def self.artist_count
    
  end
end