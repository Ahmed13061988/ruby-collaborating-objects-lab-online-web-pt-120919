class Song 
  
  @@all=[]
  
  attr_accessor :name , :artist 
  
  def initialize(name)
    @name = name 
    @@songs << self 
  end 

    
  
  def self.all
    @@all
  end 

end 
  