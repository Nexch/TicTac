# rubocop:disable Style/MultipleComparison, Naming/VariableNumber

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

class Player
  attr_accessor :inp1_i
  def lol(arg_turn)
    $flag = if arg_turn.odd?
              'x'
            else
              'o'
            end
    puts "player #{$flag}"
    puts 'Select row'
    input_1 = gets
    @inp1_i = input_1.to_i
    checking = Game.new
    checking.parameters(@inp1_i)
    puts 'Select colum'
    input_2 = gets
    @inp2_i = input_2.to_i
    checking.parameters(@inp2_i)
    [@inp1_i, @inp2_i]
  end

  def draw
    puts 'draw'
  end

  def cheat
    puts 'you are cheating'
  end

  def error
    puts 'error'
    puts 'Firt put the a number between 1-3 to select the row then put a number between 1-3 to select the column'
  end

  def win
    p "Player #{$flag} win"
    start_again = Game.new
    start_again.play
  end
end
puts 'TIC-TAC-TOE GAME'

def start
  puts 'Do you want to play again? (yes/no)'
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

# rubocop:enable Style/MultipleComparison, Naming/VariableNumber
