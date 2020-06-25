require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    
    def initialize(name,artist, genre)
        @@count += 1
        @@genres << genre
        
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
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
        hash = Hash.new(0)
        @@genres.each do |genre|
            hash[genre] += 1
        end
        hash
    end
    def self.artist_count
        hash = Hash.new(0)
        @@artists.each do |artist|
            hash[artist] += 1
        end
        hash
    end
    
end
    
     
        
  
    
    
    
