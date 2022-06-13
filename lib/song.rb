class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count +=1
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
        output = {}
        self.genres.each do |genre|
            song_count = @@genres.count(genre)
            output[genre] = song_count
        end
        output
    end

    def self.artist_count
        output = {}
        self.artists.each do |artist|
            artist_count = @@artists.count(artist)
            output[artist] = artist_count
        end
        output
    end
end