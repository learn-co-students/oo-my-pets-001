class Dog

  attr_accessor :mood
  attr_reader :dog_name

  def initialize(dog_name)
    @dog_name = dog_name
    @mood = "nervous"
  end

  def name
    @dog_name
  end

end

Dog.new("Daisy")
