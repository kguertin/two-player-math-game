class Player

  attr_accessor :score, :turn

  def initialize
    @score = "3/3"
    @turn = false
  end 

end 

player1 = Player.new
player2 = Player.new