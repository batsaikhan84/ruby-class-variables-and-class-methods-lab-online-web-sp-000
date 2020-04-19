class Song
  
  @@count = 0
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
  end
  
  def count
    @@count
  end
  
  def genres
    if !@@genres.include?(@@genre)
      @@genres << genre
  end
  
end