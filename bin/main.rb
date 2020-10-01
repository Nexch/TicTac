# rubocop:disable Style/GlobalVars
# rubocop:disable Style/MultipleComparison
# rubocop:disable Naming/VariableNumber
# rubocop:disable Layout/LineLength

# !/usr/bin/env ruby

require_relative '../lib/logic_game.rb'

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

  def true_line(arg_array)
    arg_array = arg_array.join('')
    print arg_array
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

puts 'TIC-TAC-TOE GAME'

def start
  puts 'Do you want to play? (yes/no)'
  want_to_play = gets.chomp.downcase
  if want_to_play == 'yes' || want_to_play == 'y'
    board_1 = Board.new
    board_1.board
    game_1 = Game.new
    game_1.turns
  else
    puts 'THANK YOU, GOOD LUCK!!'
    exit
  end
end

first_start = Game.new
board_1 = Board.new
board_1.board
first_start.turns

# rubocop:enable Style/GlobalVars

# rubocop:enable Style/MultipleComparison
# rubocop:enable Naming/VariableNumber
# rubocop:enable Layout/LineLength
