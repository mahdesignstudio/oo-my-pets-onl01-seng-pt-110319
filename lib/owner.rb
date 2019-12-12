class Owner
 attr_accessor :name, :species  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
  end 
  
  def say_species 
    "I am a #{@species}."
  end 

  def self. all 
    @@all 
  end 

  def self.count
    self.all.count 
  end 
  
  def self.reset_all
    self.all.clear
  end 
  #Associations: Owner instance methods 
  
  def cats 
    Cat.all.select { |cat| cat.owner == self }
  end
  
  def dogs 
    Dog.all.select { |dog| dog.owner == self }
  end
end