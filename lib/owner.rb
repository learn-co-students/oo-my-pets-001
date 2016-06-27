require 'pry'

class Owner
  @@owners = []

  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {
      :cats => [],
      :dogs => [],
      :fishes => []
    }
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each {  |fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each do |k,v|
      v.each do |pet|
        pet.mood = "nervous"
      end
      v.clear
    end
  end

  def list_pets
    quant = []
    @pets.each { |k, v| quant << v.length }
    "I have #{quant[2]} fish, #{quant[1]} dog(s), and #{quant[0]} cat(s)."
  end
end