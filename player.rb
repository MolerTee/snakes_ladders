class Player

  attr_reader :name ,:position
  
  def initialize(name , position)
    @name = name
    @position = position
  end

  def move(number_of_spaces)
    @position += number_of_spaces
  end

  def snake_britney_bitch(player_position)
    if player_position == 17 
      @position = 9
    end

  end

  def snake_asshole(player_position)
    if player_position == 22
      @position = 3
    end
  end

  def ladder_1(player_position)
    if player_position == 1
      @position = 15
    end
  end


  def ladder_2(player_position)
    if player_position == 5
      @position = 17
    end
  end

  def finish(player_position)
    if player_position == 24
      winner = player.name
      return "#{winner} has won the game!!wooooo!"

    end
  end

  def gone_too_far(player_position)
    return true if player_position > 24 
    return false
  end

  def difference
    if player.gone_too_far == true
      difference = @position - 24
      @position = 24 - difference
    end
  end


end