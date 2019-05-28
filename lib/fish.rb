class Fish
  # code goes here
  attr_accessor :mood
  attr_reader :name

  def initialize(pet_name)
    @name = pet_name
    @mood = "nervous"
  end

end