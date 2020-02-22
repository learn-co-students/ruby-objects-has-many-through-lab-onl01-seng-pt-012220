require 'pry'

class Song  
  attr_accessor :name, :artist, :genre 
  
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    @@all = self 
    
end 

def self.all 
  @@all
  
end

prince =
Artist.new("Prince")
pop = Genre.new("pop")

kiss =
Song.new("Kiss"
prince, pop)

end 


end
