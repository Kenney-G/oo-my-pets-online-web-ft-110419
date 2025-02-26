class Owner
  attr_reader :name, :species
  
@@all = []

def initialize(name)
  @name = name
  @species = "human"
  @@all << self
end

def say_species
  "I am a " + species + "."
end

def self.all
  @@all
end

def self.count
  self.all.count
end

def self.reset_all
  @@all.clear
end

def cats
  Cat.all.select do |cat|
    cat.owner == self
  end
end
  
def dogs
  Dog.all.select do |dog|
    dog.owner == self
  end
end

def buy_cat(name)
  Cat.new(name, self)
end

def buy_dog(name)
  Dog.new(name, self)
end

def walk_dogs
  dogs.each {|dog| dog.mood = "happy"}
end

def feed_cats
  cats.each {|cat| cat.mood = "happy"}
end

def pets
self.dogs + self.cats
end

def sell_pets
  pets.each do |pet|
    pet.mood = "nervous"
    pet.owner = nil
  end
end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)." 
end

end