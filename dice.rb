class Dice

  def initialize
    @roll_number = 0
  end

  def roll
    @roll_number = 1 + rand(6)
  end

end