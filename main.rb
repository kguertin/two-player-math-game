require "./Game"

# Potential classes:
# Player, Turn, game

# Player will track player score.
# Turn will track which players turn it is
# Game will track if the game is over or now, and generate the questions for each player. 

# Player tracks Score: initalize 3/3 when player created, (Add name through gets.chomp?)

# game will check players generate questions and check if the game is over. We can manage turns in here maybe? But we might want to use a turn class to track it. THIS IS THE GAME LOOP and manages the current player(turn class  maybe?)

# Game will take user I/O, Players will not unless we allow for players to enter their own user name. 

# Players
# Game Logic
# Manage each turn with turn class. Is this better as a function that just runs within the game class?

game = Game.new
game.start
game.run

