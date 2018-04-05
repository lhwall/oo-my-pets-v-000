class Owner
  # code goes here
  @@all = []
  
  def initialize(name = nil)
    @name=name
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
    

end