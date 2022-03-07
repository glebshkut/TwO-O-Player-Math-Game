require "./player.rb"
require "./prompt.rb"

# player2 = Player.new(1)
# prompt1 = Prompt.new
# player2 = Player.new(2)
# prompt2 = Prompt.new

# prompt1.switch_turns(player2)


player1 = Player.new(1)
player2 = Player.new(2)

while player1.lives > 0 and player2.lives > 0
  prompt = Prompt.new
  
  if Prompt.current_player == 1
    prompt.ask(player1)
  else
    prompt.ask(player2)
  end
  prompt.score(player1, player2)
end

