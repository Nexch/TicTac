# rubocop:disable Style/GlobalVars
# rubocop:disable Style/GuardClause
# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity

class Logic
  def same_place(argument_x, argument_y)
    if $arr[argument_x][argument_y] != ' '
      puts 'You are cheating'
      turn_again = Game.new
      turn_again.turns
    end
  end

  def check
    winning = Game.new
    if $arr[1][9] == $arr[0][15] && $arr[1][9] == $arr[2][3] && $arr[1][19] != ' '
      winning.win
    elsif $arr[1][9] == $arr[0][3] && $arr[1][9] == $arr[2][15] && $arr[1][19] != ' '
      winning.win
    elsif $arr[1][9] == $arr[0][9] && $arr[1][9] == $arr[2][9] && $arr[1][9] != ' '
      winning.win
    elsif $arr[1][9] == $arr[1][15] && $arr[1][9] == $arr[1][3] && $arr[1][9] != ' '
      winning.win
    elsif $arr[0][3] == $arr[0][9] && $arr[0][3] == $arr[0][15] && $arr[0][3] != ' '
      winning.win
    elsif $arr[0][3] == $arr[1][3] && $arr[0][3] == $arr[2][3] && $arr[0][3] != ' '
      winning.win
    elsif $arr[2][15] == $arr[2][9] && $arr[2][15] == $arr[2][3] && $arr[2][15] != ' '
      winning.win
    elsif $arr[2][15] == $arr[1][15] && $arr[2][15] == $arr[0][15] && $arr[2][15] != ' '
      winning.win
    end
  end
end

# rubocop:enable Style/GlobalVars
# rubocop:enable Style/GuardClause
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
