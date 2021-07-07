class Artist 

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    save
  end
  
  def name
    @name
  end
  
  def save
    @@all << self
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    self.songs.map {|song|song.genre}.uniq
  end

  def self.all
    @@all
  end
end 
