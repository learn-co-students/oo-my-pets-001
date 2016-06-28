require "pry"
class Owner
  # code goes here
  attr_accessor :name, :pets
  OWNERS = []
  def initialize(name)
    @name = name
    OWNERS << self
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def self.all
    OWNERS
  end

  def self.reset_all
    OWNERS.each {|x| OWNERS.delete(x)}
  end

  def self.count
    OWNERS.count
  end

  def species
    "human"
  end

  def say_species
    "I am a human."
  end

  def name
    @name
  end

  def pets
    @pets
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

  def walk_dogs
    @pets[:dogs].each {|x| x.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|x| x.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|x| x.mood = "happy"}
  end

  def sell_pets
    @pets.each do |x,y|
      y.each do |a|
        a.mood = "nervous"
        # y.delete(a)
      end
        @pets = {
          :fishes => [],
          :dogs => [],
          :cats => []
        }
    @pets
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
