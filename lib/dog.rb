class Dog
 attr_accessor :owner 
 attr_reader :name 
 @@all = []
 
 def initialize (name, owner)
   @name = name 
   self.owner = owner 
   @@all << self 
end

def self.all 

end 