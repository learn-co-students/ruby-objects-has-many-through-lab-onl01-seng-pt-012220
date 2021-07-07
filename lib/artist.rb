require 'pry'

class Artist 
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
 
def new_song(name, genre)
    song.new = (name, self, genre)
end

def songs
  Song.all.select{|song| Song.genre == self}
  Song.artist == self
  
def artist 
  songs.map {|song| song.artist}
end

 def pop = Genre.new("pop")
   
 end
 
end

