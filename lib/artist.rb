class Artist 
  @@song_count = 0 
  @@all=[]
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @@all << self
    @@song_count = +1
  end 
  def self.all 
    @@all
  end 
  def add_song(song)
    @@all << song
    song.artist == self 
    @@song_count += 1
  end
  def songs 
    Song.songs.select do |s|
      s.artist == self 
    end 
  end 
end 