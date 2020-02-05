class Genre

    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs 
        Song.all.select{|s| s.genre == self}
    end

    def artists
        artists = []
        songs.select{|s| artists << s.artist}.uniq
        artists
    end

    def self.all
        @@all
    end
end