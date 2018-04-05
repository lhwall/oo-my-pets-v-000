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
    new_cat = Cat.new 
    @pets[:cats] << self
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << self
  end
  
  def say_species
    "I am a #{self.species}."
  end 

end