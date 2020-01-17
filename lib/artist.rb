class Artist 
  @@song_count = 0 
  @@all=[]
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @@all << self
    @songs=[]
  end 
  def self.all 
    @@all
  end 
  def add_song(song)
    @@all << song
    song.artist = self 
  end
  def self.all
    @@all
  end 
  
  def self.songs
    Song.all.select do |s|
      s.artist == self 
    end 
  end 
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name)
  end 
  
  def print_songs
    self.songs.each  {|song| puts song.name}
  end 
  
  def self.new_by_filename(filename)
    artist_name, song_name, extra = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end
end 