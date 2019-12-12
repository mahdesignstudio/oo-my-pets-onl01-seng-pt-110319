class Owner
 attr_accessor :name, :species  
  @@all = []
  
 def initialize(name)
   @name = name 
   @species = "human"
   @@all << self 
  end 
end