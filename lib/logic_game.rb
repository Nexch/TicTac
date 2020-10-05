class Logic
  def same_place(argument_x, argument_y)
    if $arr[argument_x][argument_y] != ' '
      cheats = Player.new
      cheats.cheat
      turn_again = Game.new
      turn_again.turns
    end
  end

  def check
    winning = Player.new
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

# Game
class Game
  @@turn = 1
  def turns
    while @@turn <= 9
      check_player = Player.new
      true_arr = check_player.lol(@@turn)
      inp1_i = true_arr[0] - 1
      inp2_i = (true_arr[1] * 6) - 3
      same = Logic.new
      same.same_place(inp1_i, inp2_i)
      $arr[inp1_i][inp2_i] = $flag
      board_1 = Board.new
      board_1.board
      cheking = Logic.new
      cheking.check if @@turn >= 5
      @@turn += 1
    end
    tie = Player.new
    tie.draw
    play
  end

  def parameters(arg)
    if arg == 1 || arg == 2 || arg == 3

    else
      wrong = Player.new
      wrong.error
      turns
    end
  end

  def play
    @@turn = 1
    $arr = [[' ', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' '], [' ', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' '], [' ', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' ']]
    start
  end
end
