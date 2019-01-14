class Genre 
  attr_accessor :name, :song, :artist, :genre 
  
  @@all = []
  
  def initialize(name)
    @name = name
   
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def songs 
    Song.all {|song| song.select {|song| song.genre} }
  end
  
  def artists 
    Song.all {|song| song.select {|song|} song.artist}}
  end
  
end 