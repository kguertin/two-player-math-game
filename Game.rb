require './Players'

class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end 

  def start
    first_player(self.player1, self.player2)
  end

  def run
    current_player = set_current_player

  end

  def first_player(player1, player2)
    puts num = 1 + rand(2)
    num == 1 ? player1.turn = true : player2.turn = true
  end

  def set_current_player
    if self.player1.turn == true 
      self.player1.name
    else
      self.player2.name 
    end 
  end

  


end


