# Purpose: This file contains the Game class which is responsible for managing the game state and switching between players.

class Game
  attr_reader :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players.first
  end

  def switch_player
    @current_player = @players.rotate!.first
  end
end



