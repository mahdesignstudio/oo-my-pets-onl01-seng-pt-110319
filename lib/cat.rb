class Cat
  attr_accessor :owner 
  attr_reader :name 
  @@all = []
  
   def initialize (owner, name)
   @name = name 
   self.owner = owner 
   @@all << self 
end
end