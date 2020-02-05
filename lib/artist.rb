class Artist

    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
    end

    def songs 
        Song.all.select{|s| s.artist == self}
    end

    def genres
        genres = []
        songs.collect{|s| genres << s.genre}
        genres
    end

    def self.all
        @@all
    end

end