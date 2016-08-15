
class Die
  attr_reader :sides
  OFFICIAL_DICE_LETTER_COMBINATIONS = [
    'AAEEGN',
    'ELRTTY',
    'AOOTTW',
    'ABBJOO',
    'EHRTVW',
    'CIMOTU',
    'DISTTY',
    'EIOSST',
    'DELRVY',
    'ACHOPS',
    'HIMNQU',
    'EEINSU',
    'EEGHNW',
    'AFFKPS',
    'HLNNRZ',
    'DEILRX'
  ]

  def initialize(letters=[])
    @sides = letters
  end

  def self.official_boggle_dice
    dice = []
    OFFICIAL_DICE_LETTER_COMBINATIONS.each do |die|
      dice << Die.new(die)
    end
    dice
  end

  def roll
    @sides.split("").sample
  end

end
