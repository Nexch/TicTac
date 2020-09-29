#!/bin/ruby
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

$arr = [[' ',' ',' ',' ',' ',' ','#',' ',' ',' ',' ',' ','#',' ',' ',' ',' ',' '],[' ',' ',' ',' ',' ',' ','#',' ',' ',' ',' ',' ','#',' ',' ',' ',' ',' '], [' ',' ',' ',' ',' ',' ','#',' ',' ',' ',' ',' ','#',' ',' ',' ',' ',' ']]


turn = 1
while turn < 9
  if turn.odd?
    flag = "x"
  else
    flag = "o"
  end
  p 'line'
  inp1 = gets
  p 'colum'
  inp2 = gets
  inp1_i = inp1.to_i
  inp2_i = inp2.to_i
  inp1_i = inp1_i - 1
  inp2_i = (inp2_i * 6) - 3
  $arr[inp1_i][inp2_i] = flag
  board
  turn += 1
end
