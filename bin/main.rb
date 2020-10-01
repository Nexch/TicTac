# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength
# rubocop:disable Style/GlobalVars
# rubocop:disable Style/ClassVars
# rubocop:disable Style/MultipleComparison
# rubocop:disable Naming/VariableNumber
# rubocop:disable Layout/LineLength

# !/usr/bin/env ruby
class Board
  private

  def line1
    print ' ' * 6
    print '#'
    print ' ' * 5
    print '#'
    print "\n"
  end

  def line2
    print ' '
    print '# ' * 9
    print "\n"
  end

  def true_line(array)
    array = array.join('')
    print array
    print "\n"
  end

  public

  def board
    line1
    true_line($arr[0])
    line1
    line2
    line1
    true_line($arr[1])
    line1
    line2
    line1
    true_line($arr[2])
    line1
  end

  $arr = [[' ', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' '], [' ', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' '], [' ', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', ' ']]
end

# Game
class Game
  @@turn = 1
  def turns
    p 'Firt put the a number between 1-3 to select the row then put a number between 1-3 to select the column'
    while @@turn <= 9
      flag = if @@turn.odd?
               'x'
             else
               'o'
             end
      p "player #{flag}"
      p 'Select row'
      inp1 = gets
      p 'Select colum'
      inp2 = gets
      inp1_i = inp1.to_i
      inp2_i = inp2.to_i
      parameters(inp1_i)
      parameters(inp2_i)
      inp1_i -= 1
      inp2_i = (inp2_i * 6) - 3
      same = Logic.new
      same.same_place(inp1_i, inp2_i)
      $arr[inp1_i][inp2_i] = flag
      board_1 = Board.new
      board_1.board
      @@turn += 1
    end
  end

  def parameters(arg)
    if arg == 1 || arg == 2 || arg == 3

    else
      p 'Error'
      turns
    end
  end
end

puts 'TIC-TAC-TOE GAME'
puts 'Do you want to play? (yes/no)'

want_to_play = gets.chomp.downcase
if want_to_play == 'yes' || want_to_play == 'y'
  game_1 = Game.new
  game_1.turns
else
  puts 'THANK YOU, GOOD LUCK!!'
end

# rubocop:enable Metrics/MethodLength
# rubocop:enable Style/GlobalVars
# rubocop:enable Style/ClassVars
# rubocop:enable Style/MultipleComparison
# rubocop:enable Naming/VariableNumber
# rubocop:enable Layout/LineLength
