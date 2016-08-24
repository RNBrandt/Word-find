
class Board
  attr_reader :board
  def initialize(dice)
    @dice = dice
    @board = Array.new(4) {Array.new(4)}
  end

  def rumble
    @dice.shuffle!
    index = -1
    @board.map! do |row|
      row.map! do |space|
        index += 1
        dice[index].roll
      end
    end
  end
end
