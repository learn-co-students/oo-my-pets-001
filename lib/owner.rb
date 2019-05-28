require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@array = []

  def initialize(species)
    @species = species
    @name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@array.push(self)
  end

  def self.all
    @@array
  end

  def self.reset_all
    @@array = []
  end

  def self.count
    @@array.count
  end
  
  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    @pets[:fishes].push(Fish.new(fish))
  end

  def buy_cat(cat)
    @pets[:cats].push(Cat.new(cat))
  end

  def buy_dog(dog)
    @pets[:dogs].push(Dog.new(dog))
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
    @pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end