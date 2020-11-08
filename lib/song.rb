
class Song
    attr_accessor :artist, :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all<< self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        artist, song = filename.split(" - ")
        song_instance = self.new(song)
        song_instance.artist_name = artist
        song_instance
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

end