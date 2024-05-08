
# Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

# The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

require_relative 'player'
require_relative 'game'
require_relative 'question'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

game = Game.new(player1, player2)

while player1.lives > 0 && player2.lives > 0
  question = Question.new
  puts "#{game.current_player.name}: #{question.question}"
  response = gets.chomp.to_i
  if question.correct?(response)
    puts "Yes, You are correct!"
  else
    puts "Seriously? No!"
    game.current_player.lose_life
  end
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  game.switch_player
end

puts "#{game.current_player.name} wins with a score of #{game.current_player.lives}/3"
puts "----- GAME OVER -----"
puts "Good bye!"
