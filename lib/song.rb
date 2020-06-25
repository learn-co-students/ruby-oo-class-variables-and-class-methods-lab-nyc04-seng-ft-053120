require 'pry'
class Song

    attr_accessor :name, :artist, :genre
    @@genres = []
    @@artists = []
    @@all = []
    @@count = 0
    def initialize (name, artist, genre)
        @name = name

        @genre = genre
        @@genres << @genre

        @artist = artist
        @@artists << @artist
       
        @@count +=1
        @@all << self
    end

    # def make_no_dupe_array (class_variable)
    #     no_dupes = []
    #     class_variable.each do |class_elem|
    #         if !no_dupes.include?(class_elem)
    #          no_dupes<< class_elem
    #         end
    #     end
    #     no_dupes
    # end

    def self.all
        @@all
    end
    def self.artists
       @@artists.uniq
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        
        genre_hash= {}
        @@genres.each do |genre_ele|
            if genre_hash[genre_ele]
               genre_hash[genre_ele] +=1       
            else
                genre_hash[genre_ele] = 1
            end
        end
        genre_hash
    end
    def self.artist_count
        artist_hash= {}
        @@artists.each do |art_ele|
            if artist_hash[art_ele]
               artist_hash[art_ele] +=1       
            else
                artist_hash[art_ele] = 1
            end
        end
        artist_hash  
    end

end