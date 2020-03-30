class Question 

  def initialize
    @answer = 0
  end 

  def ask(current_player)
    num1 = 1 + rand(20)
    num2 = 1 + rand(20)
    @answer = num1 + num2
    puts "#{current_player.name}: What is #{num1} plus #{num2}?"
  end

  def answer(current_player)
    input = gets.chomp.to_i
    
    if input == @answer
      puts "YES! You are correct."
    else
      puts "Are you serious? NO!"
      current_player.score -= 1
    end
  end 

end