class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    
  end
  
  def new_appoitnment(date, patient)
    
  end
  
  def patients
    
  end
  
end