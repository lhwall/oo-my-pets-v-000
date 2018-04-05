class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def initialize(name = nil)
    @name= name
    @pets= {fishes: [], cats: [], dogs: []}
    @species= "human"
    self.save
  end
   
  def self.create(name = nil) 
    new_owner = self.new(name)
    new_owner.save
    new_owner
  end 
  
  def save 
    @@all << self
  end 
  
  def self.reset_all 
    @@all.clear 
  end
  
  def self.count 
    @@all.size 
  end 
  
  def self.all 
    @@all 
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  
   def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def make_pets_happy(pet)
    @pets[pet].each {|pet| pet.mood = "happy"}
    
  def walk_dogs
   make_pets_happy(:dogs)
  end
  
  def play_with_cats
    @pets[:cats].each {|cat| dog.mood = "happy"}
  end

end