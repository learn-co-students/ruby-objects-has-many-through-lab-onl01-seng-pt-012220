class Genre
  
  @@all = []
  
  attr_accessor :name, :song, :artist
  
  def initialize(name)
    @name = name
    @@all << self
    save
  end
  
  def self.all
    @@all << self
  end
  
  def save
    @save
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists                     
     songs.collect {|song| song.artist}
  end
end
