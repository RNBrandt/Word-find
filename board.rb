
class Board
  # attr_reader :dice
  attr_reader :board
  def initialize(dice)
    @dice = dice
    # @board = Array.new(4) {Array.new(4)}
  end

  def rumble
    @board = []
    @dice.each do |die|
      @board << die.roll
    end
    new_board = @board.each_slice(4).to_a
  end
end
