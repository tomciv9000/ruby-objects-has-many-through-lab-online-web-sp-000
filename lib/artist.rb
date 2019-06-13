class Artist 
  
  attr_accessor :name
  
  @@all = []  
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name)
    song = Song.new(song_name)
    song.artist = self
  end
  
  def songs 
    Songs.all.select do |song|
      song.artist == self
    end
  end
  
  

end