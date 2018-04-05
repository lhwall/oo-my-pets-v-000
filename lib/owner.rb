class Owner
  # code goes here
  @@all = []
  
  def initialize(name = nil)
    @name=name
    self.save
  end
   
  def create(name = nil) 
    new_owner = self.new 
    new_owner.save 
  end 
  
  def save 
    @@all << self
  end 
  
  def self.clear_all 
    @@all.clear 
  end
  
  def self.count 
    @@all.size 
  end 
    

end