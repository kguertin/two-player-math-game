require './Players'
require './Question'

class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @question = Question.new
    @current_player = ''
  end 

  def start
    first_player(self.player1, self.player2)
  end

  def run
    while self.player1.score > 0 && self.player2.score > 0 do 
      puts "----- NEW TURN -----"
      @question.ask(@current_player)
      @question.answer(@current_player)
      puts "P1: #{self.player1.score}/3 vs P2: #{self.player2.score}/3"
      switch_player
      @current_player = set_current_player
    end
    puts "----- GAME OVER -----"
    puts "#{@current_player.name} Wins!"
  end

  def first_player(player1, player2)
    num = 1 + rand(2)
    num == 1 ? player1.turn = true : player2.turn = true
    @current_player = set_current_player
  end

  def set_current_player
    if self.player1.turn == true 
      return self.player1
    else
      return self.player2
    end 
  end

  def switch_player
    if self.player1.turn == true
      self.player1.turn = false
      self.player2.turn = true
    elsif self.player2.turn == true
      self.player1.turn = true
      self.player2.turn = false
    end 
  end 

end


