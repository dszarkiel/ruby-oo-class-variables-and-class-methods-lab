require 'pry'
class Song
    attr_reader :name, :artist, :genre

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
#HELPER METHOD

    def self.genre_count
        genre_hash = {}
        my_genres = @@genres
        my_genres.each do |genre|
           if !genre_hash[genre]
            genre_hash[genre] = 1
            elsif
                genre_hash[genre] += 1
        end
    end
    genre_hash
    end

    def self.artist_count
        artist_hash = {}
        my_artists = @@artists
        my_artists.each do |artist|
            if !artist_hash[artist]
            artist_hash[artist] = 1
            elsif
                artist_hash[artist] += 1
            end
        end
        artist_hash
    end

                

end

