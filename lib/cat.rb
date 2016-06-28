class Cat

  attr_accessor :mood
  attr_reader :cat_name

  def initialize(cat_name)
    @cat_name = cat_name
    @mood = "nervous"
  end

  def name
    @cat_name
  end

end

Cat.new("crookshanks")
