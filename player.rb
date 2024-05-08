# This file contains the Player class, which is used to create player objects. Each player has a name and a number of lives.
class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end

