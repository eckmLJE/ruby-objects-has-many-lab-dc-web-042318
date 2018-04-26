require 'pry'

class Artist

    attr_accessor :name, :genre, :songs

    @@all_artists = []
    @@song_count = 0

    def initialize(name)
        @name = name
        @genre = genre
        @songs = []
        @@all_artists << self
    end

    def add_song(song)
        song.artist = self
        self.songs << song
        @@song_count += 1
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        add_song(song)
    end

    def self.song_count
        @@song_count
    end

end