class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << self.genre
        @@artists << self.artist
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
        genres_hash = {}
        
        @@genres.each { |genre| 
            if !genres_hash.has_key?(genre)
                genres_hash[genre] = 1
            else
                genres_hash[genre] += 1
            end
        }
        genres_hash
    end

    def self.artist_count
        artists_hash = {}
        
        @@artists.each { |artist| 
            if !artists_hash.has_key?(artist)
                artists_hash[artist] = 1
            else
                artists_hash[artist] += 1
            end
        }
        artists_hash

    end
end