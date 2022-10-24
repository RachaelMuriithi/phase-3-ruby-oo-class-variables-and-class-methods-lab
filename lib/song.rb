class Song 
    @@count = 0 
    @@genres = []
    @@artists = []
    attr_accessor :name , :artist ,:genre

    def initialize(name, artist_name,genre)
        @name = name
        @artist = artist_name
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist_name
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
        @@genres = @@genres.tally
    end
    def self.artist_count
        @@artists = @@artists.tally
    end
end