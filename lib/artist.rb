class Artist 
  @@all=[]
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @@all << self
  end 
  def self.all 
    @@all
  end 
  def add_song(song)
    song = Song
    song.name = self 
  end
  def songs 
    @songs.all.each do |s|
      s.artist == self 
    end 
  end 
end 