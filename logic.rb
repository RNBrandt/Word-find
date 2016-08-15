class Boggle

  # def initialize
  #   @row_0 = []
  #   @row_1 = []
  #   @row_2 = []
  #   @row_3 = []
  # end

  def start

  end

  def random_row(row)
    4.times do
      row << ('a'..'z').to_a.sample
    end
  end

end


