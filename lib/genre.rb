class Genre 
  attr_accessor :name, :songs, :artist, :genre 
  
  @@all = []
  
  def initialize(name)
    @name = name
   
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def songs 
    Song.select {|song| song.genre} 
  end
  
  def artists 
    Song.collect {|song| song.artist}
  end
  
end 