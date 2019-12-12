class Owner
 attr_accessor :name 
  @@all = []
  
 def initialize(name)
   @name = name 
   @species = "human"
   @@all << self 
  end 
end