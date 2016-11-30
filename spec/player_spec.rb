require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../player')
require_relative ('../board')
require_relative('../dice')

class PlayerSpec < MiniTest::Test

  def test_can_create_player
    player = Player.new("Steve" , 0)
    assert_equal("Steve" , player.name())
  end

  def test_player_position
    player = Player.new("Steve" , 0)
    assert_equal(0 , player.position())
  end

  def test_player_can_move
    player = Player.new("Steve", 0)
    player.move(2)
    assert_equal(2 , player.position())
  end

  def test_dice_moves_a_player
    player = Player.new("Steve", 0)
    dice = Dice.new
    player.move(dice.roll)
    assert_includes(1..6,   player.position())
  end

  def test_player_lands_on_snake_britney_bitch
    player = Player.new("Steve" , 0)
    
    player.move(17)
    player.snake_britney_bitch(player.position())
    
    assert_equal(9 , player.position())
  end

  def test_player_lands_on_snake_asshole
    player = Player.new("Steve" , 0)
    
    player.move(22)
    player.snake_asshole(player.position())
    
    assert_equal(3 , player.position())
  end

  def test_player_lands_on_ladder_1
    player = Player.new("Steve" , 0)
    
    player.move(1)
    player.ladder_1(player.position())
    
    assert_equal(15 , player.position())
  end

  def test_player_lands_on_ladder_2
    player = Player.new("Steve" , 0)
    
    player.move(5)
    player.ladder_2(player.position())
    
    assert_equal(17 , player.position())
  end

  def test_finish
    player = Player.new("Steve", 23)
    dice = Dice.new

    player.move(dice.roll)
    player.finish(player.position())

    assert_includes(24..29, player.position())
  end

  def test_player_gone_too_far
    player = Player.new("Steve", 20)
    dice = Dice.new
    player.move(dice.roll)
    assert_equal(player.position > 24, player.gone_too_far(20))
  end


  def test_difference_if_position_is_greater_than_24
    player = Player.new("Steve", 23)
    player.move(3)
    assert_include(19..23, player.difference)
  end
end