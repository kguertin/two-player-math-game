require './Players'

class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = ''
  end 

  def start
    first_player(self.player1, self.player2)
  end

  def run
    while self.player1.score > 0 && self.player2.score > 0 do 
      puts "----- NEW TURN -----"
      generate_question
      switch_player
      @current_player = set_current_player
    end
    puts "----- GAME OVER -----"
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

  def generate_question
    num1 = 1 + rand(20)
    num2 = 1 + rand(20)
    answer = num1 + num2
    puts "#{@current_player.name}: What is #{num1} plus #{num2}?"
    input = gets.chomp.to_i
    
    if input == answer
      puts "YES! You are correct."
    else
      puts "Are you serious? NO!"
      @current_player.score -= 1
    end
    puts "P1: #{self.player1.score}/3 vs P2: #{self.player2.score}/3"
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


