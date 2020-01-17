class Artist 
  @@song_count = 0 
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
    @@songs << song
    song.artist = self 
  end
  def songs 
    Song.songs.select do |s|
      s.artist == self 
    end 
  end 
end 