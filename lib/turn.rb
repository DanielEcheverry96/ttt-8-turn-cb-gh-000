def valid_move?(board, index)
  isValid = false
  if !position_taken?(board, index) && index.between?(0,8)
    !isValid
  else
    isValid
  end
end

def position_taken?(board, index)
  isHere = false
  if board[index] == " " || board[index] == ""
    isHere
  elsif board[index] == nil
    isHere
  else
    !isHere
  end
end

def display_board(board) #Imprime el estado actual del juego
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def move(board, index, caracter = "X")
  board[index] = caracter
end

def input_to_index(cadena)
  index = cadena.to_i
  index -= 1
end
