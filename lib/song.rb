require 'pry'

class Song

    attr_accessor :name, :artist, :genre

        @@count = 0
        @@artists = []
        @@genres = []
    
            def initialize(name, artist, genre)
                @name = name
                @artist = artist
                @genre = genre
                @@count += 1
                @@artists << @artist
                @@genres << @genre
                
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
                genre_count = {} #genre count is an empty hash where we will put the hashes created
                @@genres.each do |genre| #iterate through class vairable that containes genre
                   
                  if genre_count[genre] #if genre_count[genre] is true 
                  genre_count[genre] += 1 #add 1
                  else
                  genre_count[genre] = 1 #if false = 1
                  end
                  
                end
                genre_count
              end
              def self.artist_count
                artist_count = {}
                @@artists.each do |artist|
                   
                  if artist_count[artist]
                  artist_count[artist] += 1
                  else
                  artist_count[artist] = 1
                  end
                end
              
                artist_count
              end
end