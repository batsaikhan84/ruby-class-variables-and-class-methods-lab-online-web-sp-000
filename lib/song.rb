class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_counter = {}
  @@genre_counter = {}
  
  def initialize(name, artist, genre)
    @name = name
    @name = artist
    @genre = genre
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
    
  end
  
  def self.artist_count
    
  end
end