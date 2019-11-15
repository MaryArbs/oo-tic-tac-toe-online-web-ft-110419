class TicTacToe

  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [0,4,8],
  [1,4,7],
  [2,5,8],
  [2,4,6]
]

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end


  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(string)
   string.to_i - 1
  end

  def move(index, player) # method should change board to have first spot filled
    @board[index] = player
  end

  def position_taken?(index)
    @board[index]== "X" || @board[index]== "O"
  end

  def valid_move?(index)
    #checking if there is an X or O
    if position_taken?(index) || index > 8 || index < 0
      false
    else
      true
    end
  end

  def turn_count
  counter = 0
  @board.each do |space|
    if space == "X" || space == "O"
      counter +=1
  end
end
return counter
end

def current_player
turn_count% 2 == 0 ? "X" : "O"
end

def turn
  turn_count.gets
end


end
