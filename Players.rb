class Player

  attr_accessor :score, :turn
  attr_reader :name

  def initialize(name)
    @name = name 
    @score = 3
    @turn = false
  end 

end 