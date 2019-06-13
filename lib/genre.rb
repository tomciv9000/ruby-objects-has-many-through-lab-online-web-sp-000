class Genre 

  attr_accessor :name

  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def songs 
    Songs.select do |song|
      song.genre == self 
    end

end