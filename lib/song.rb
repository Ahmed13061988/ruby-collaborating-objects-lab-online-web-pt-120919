class Song 
  
  @@songs=[]
  
  attr_accessor :name , :artist 
  
  def initialize(name)
    @name = name 
    @@songs << self 
  end 
  def self.new_by_filename 
  
  def self.songs 
    @@songs 
  end 




end 
  