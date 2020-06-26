class Song
    attr_accessor :name, :artist, :genre
  
    @@count = 0
    @@artists = []
    @@genres = []
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count +=1
      @@genres << genre
      @@artists << artist
    end
    def name 
        @name
    end
    def artist
        @artist
    end
    def genre
        @genre
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

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre]
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1
          end
        end
        genre_count
      end
    end
  
  
# class Song 
#     attr_accessor :name, :artist, :genre
#     @@count = 0
#     @@artists = []
#     @@genres = []

#     def initialize(name, artist, genre)
#         @name = name
#         @artist = artist
#         @genre = genre
#         @@count += 1
#         @@artists << artist
#         @@genres << genre
#     end

#     def name 
#         @name
#     end
#     def artist
#         @artist
#     end
#     def genre
#         @genre
#     end
#     def self.count
#         @@count
#     end

#     def self.artists
#         @@artists.uniq
#     end
    
#     def self.genres
#         @@genres.uniq
#     end
    
#     def self.genre_count
#         new_hash = {}
#         @@genres.each do |genre|
#             if new_hash[genre]
#                 new_hash[genre] += 1
#             else
#                 new_hash[genre] = 1
#             end
#         end
#         return new_hash
#     end
#     end

#     def self.artist_count
#         song_hash = {}
#         @@artists.each do |artist|
#             if song_hash[artist] 
#              song_hash[artist] += 1
#             else
#              song_hash[artist] = 1
#             end
#         return song_hash
#     end
# end