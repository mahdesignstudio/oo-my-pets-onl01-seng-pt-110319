class Owner
 attr_reader :name, :species
 attr_accessor :owner
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
  
    def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end
  
  def walk_dogs 
    dogs.each do |dog|
      dog.mood = "happy"
    end 
  end
  
  def feed_cats 
    cats.each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def sell_pets 
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    
   dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end 
  end
  
   def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
end