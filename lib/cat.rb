class Cat
  #use accessors from test output, make sure to use just setter, just getter, or attr
  #depending on what it asks for
  attr_reader :name
  attr_accessor :owner, :mood 
  
  @@all = []
  
  #A `Dog` and a `Cat` are initialized with a name and an **Owner object**
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end

  #use accessors from test output, make sure to use just setter, just getter, or attr
  #depending on what it asks for
#owner can buy or sell pet which changes pet mood. when owner buys pet the buy_cat/buy_dog method takes in argument(_name_). New instance of that type of pet, with the name, and the name of the owner. Owner able to walk dogs or feed cats which changes mood to happy.
 end