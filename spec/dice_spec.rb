require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../player')
require_relative ('../board')
require_relative('../dice')

class BoardSpec < MiniTest::Test

  def test_dice_roll
    dice = Dice.new 
    assert_includes(1..6,   dice.roll())
  end

end