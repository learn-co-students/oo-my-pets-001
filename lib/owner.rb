require 'pry'

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  OWNER = []

  def initialize(owner)
    OWNER << self
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @species = "human"
    @name = owner
  end

  def self.all
    OWNER
  end

  def self.reset_all
    OWNER.clear
  end

  def self.count
    OWNER.count
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    # puts @pets
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
    # puts @pets
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    # puts @pets
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end

  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    @pets.each do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count
    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
