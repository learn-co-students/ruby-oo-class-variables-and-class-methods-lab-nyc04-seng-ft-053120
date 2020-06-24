require "pry"
class Song
    attr_accessor :name, :artist, :genre

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        @@all << self
    end

    def self.all
        @@all
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
        genres_hash = {}
        @@genres.each{|genre|
            # binding.pry
            genres_hash[genre] = genres_hash.has_key?(genre) ?  genres_hash[genre] += 1 : 1
        }
        genres_hash
    end

    def self.artist_count
        artists_hash = {}
        @@artists.each{|artist|
            # binding.pry
            artists_hash[artist] = artists_hash.has_key?(artist) ?  artists_hash[artist] += 1 : 1
        }
        artists_hash
    end
end
