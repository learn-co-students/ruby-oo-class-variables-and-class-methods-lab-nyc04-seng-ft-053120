class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist

        @@count += 1
        @@genres << genre
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
        results = Hash.new(0)
        @@genres.each do |genre|
           results[genre] += 1
            end
            results
        end
    
        def self.artist_count
            results = Hash.new(0)
            @@artists.each do |artist|
               results[artist] += 1
                end
                results
            end  

end


