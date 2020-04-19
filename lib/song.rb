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
    counter = 0
    if @@genre_counter.keys.include?(@genre)
      counter += 1
      @@genre_counter[@genre] = counter
      @@genre_counter
    else
      counter += 1
      @@genre_counter[@genre] = counter
      @@genre_counter
    end
  end
  
  def self.artist_count
    
  end
end