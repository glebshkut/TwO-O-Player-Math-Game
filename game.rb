class Player
  attr_accessor :lives

  def initialize(id)
    @id = id
    @lives = 3
  end

end
# tracks player id and number of lives

class Prompt
  attr_accessor :current_player
  
  def initialize()
    random_num1 = self.randomNum
    random_num2 = self.randomNum
    @question = "What's gonna be #{random_num1} + #{random_num2}?"
    @correct_answer = random_num1 + random_num2
    @current_player = 
  end

  def switch_turns(player)
    if player.id == 1
      current_player = 2
    else
      current_player = 1
    end
  end

  def ask(player)
    # gets.chomp question
    # if (#ans === #correct)
    # switch turns
    # else
    # player.score -= 1
    puts player
  end

  def random_num
    rand(1..20)
  end
end

