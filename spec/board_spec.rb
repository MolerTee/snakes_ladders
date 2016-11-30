require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../player')
require_relative ('../board')
require_relative ('../dice')

class BoardSpec < MiniTest::Test

  def test_can_get_board
    board = Board.new
    assert_equal(Board , board.class())
  end

  def test_correct_amount_of_spaces
    board = Board.new
    assert_equal(25 , board.count())
  end
end