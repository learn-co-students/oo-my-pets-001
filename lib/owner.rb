require_relative 'fish.rb'



class Owner

  # code goes here
  attr_reader  :species
  attr_accessor :name, :pets

  @@owners = []

  def Owner.all
    @@owners
  end

  def Owner.reset_all
    @@owners.clear
  end

 # def Owner.initialize
  #  @@owners = []
 # end
 # @@owners << Owner.new

  def Owner.count
    @@owners.count
  end

   def initialize(name)
  #  owner = Owner.new(name)
     @name = name
     @species = "human"
     @pets = {:fishes => [], :dogs => [], :cats => []}
     @@owners << self
   end



  def say_species
    "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    if fish.is_a? Fish
      self.pets[:fishes] << fish
    end
  end

  def buy_cat(name)
       cat = Cat.new(name)
    if cat.is_a? Cat
      self.pets[:cats] << cat
    end
  end

  def buy_dog(name)
    dog = Dog.new(name)
    if dog.is_a? Dog
      self.pets[:dogs] << dog
    end
  end

  def walk_dogs
    dog = self.pets[:dogs].each do |critter|
      critter.mood = "happy"
    end
  end

  def play_with_cats
    cat = self.pets[:cats].each do |critter|
      critter.mood = "happy"
    end
  end

  def feed_fish
    fish = self.pets[:fishes].each do |critter|
      critter.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |name|
        name.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."

  end
end