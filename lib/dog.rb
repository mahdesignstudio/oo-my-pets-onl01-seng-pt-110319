class Dog
 attr_accessor :owner 
 attr_reader :name 
 @@all = []
 
 def initialize (owner, name)
   @name = name 
   
end