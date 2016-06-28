class Fish

  attr_accessor :mood
  attr_reader :fish_name

  def initialize(fish_name)
    @fish_name = fish_name
    @mood = "nervous"
  end

  def name
    @fish_name
  end

end

Fish.new("Nemo")
