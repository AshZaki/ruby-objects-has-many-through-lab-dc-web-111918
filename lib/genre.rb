class Genre
  
  attr_accessor :name
  attr_reader :songs, :artists
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    self.songs.collect do |song| 
      song.artist
    end
  end
  
end