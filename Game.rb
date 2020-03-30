class Game

  def first_player(player1, player2)
    num = 1 + rand(2)
    num == 1 ? player1.turn = true : player2.turn = true
  end

end 