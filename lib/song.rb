class Song

    attr_accessor :name, :artist
    
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
    end

    def self.new_by_filename(filename)
        song_parts = filename.split(" - ")
        # @artist = song_parts[0]
        # @name = song_parts[1]
        song = self.new(song_parts[1])
        song.artist_name=(song_parts[0])
        song
    end
end