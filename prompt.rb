class Prompt
  @@current_player = 1
  attr_reader :question, :correct_answer

  def initialize()
    random_num1 = self.random_num
    random_num2 = self.random_num
    @question = "What does #{random_num1} + #{random_num2} equal?"
    @correct_answer = random_num1 + random_num2
  end
  
  def self.current_player
    return @@current_player
  end

  def ask(player)
    puts "----------- NEW TURN -----------"
    puts "Player #{player.id}: #{question}\n"
    response = gets.chomp
    if (response.to_i != correct_answer.to_i)
      player.lives -= 1
      
      puts "Seriously? No! You said: #{response}; correct answer is: #{correct_answer}"

    else
      puts "YES! You are correct: You said: #{response}; correct answer is: #{correct_answer}"
      
    end
    next_turn = @@current_player == 1 ? 2 : 1
    @@current_player = next_turn
  end

  def score(player1, player2)
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    
    if player1.lives == 0
      puts "Player 2 wins with #{player2.lives} lives remaining"
      puts "----------- GAME OVER -----------"
      puts "----------- GOOD BYE! -----------"
    elsif player2.lives == 0
      puts "Player 1 wins with #{player1.lives} lives remaining"
      puts "----------- GAME OVER -----------"
      puts "----------- GOOD BYE! -----------"
    end
    
    return
  end

  def random_num
    rand(1..20)
  end
end

