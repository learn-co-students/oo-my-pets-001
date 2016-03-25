require 'pry'
class Owner

attr_accessor :pets, :name
attr_reader :species

@@all = []

def initialize(name)
  @name = name
  @pets = {fishes: [], cats: [], dogs: []}
  @species = "human"

  if @@all == nil
    @@all = []
    @@all << self
  else
    @@all << self
  end

end

def self.all
  @@all
end

def buy_fish(name)
  @pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  @pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  @pets[:dogs] << Dog.new(name)
end

def self.reset_all
  @@all = []
end

def self.count

  @@all.count
end

def say_species
  return "I am a #{@species}."
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  @pets[:fishes].each do |fish|
    fish.mood = "nervous"
  end

  @pets[:cats].each do |cat|
    cat.mood = "nervous"
  end

  @pets[:dogs].each do |dog|
    dog.mood = "nervous"
  end

  @pets = {fishes: [], cats: [], dogs: []}

end

def list_pets
  return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end