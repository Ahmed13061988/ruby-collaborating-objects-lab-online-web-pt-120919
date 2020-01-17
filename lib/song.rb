class Song 
  
  @@songs=[]
  
  attr_accessor :name , :artist 
  
  def initialize(name)
    @name = name 
    @@songs << self 
  end 
  def new_by_filename 
  
  def self.songs 
    @@songs 
  end 




end 
  