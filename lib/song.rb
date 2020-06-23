class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    count = {}
    @@genres.each do |song|
      count[song] ? count[song] += 1 : count[song] = 1
    end
    count
  end

  def self.artist_count
    count = {}
    @@artists.each do |song|
      count[song] ? count[song] += 1 : count[song] = 1
    end
    count
  end
end