# If we were to set up a Tic-Tac-Toe game, we would want to know whether the board's current 
# state is solved, wouldn't we? Our goal is to create a function that will check that for us!

# Assume that the board comes in the form of a 3x3 array, where the value is 0 if a spot is 
# empty, 1 if it is an "X", or 2 if it is an "O", like so:

# [[0, 0, 1],
#  [0, 1, 2],
#  [2, 1, 0]]

# We want our function to return:

# -1 if the board is not yet finished AND no one has won yet (there are empty spots),
# 1 if "X" won,
# 2 if "O" won,
# 0 if it's a cat's game (i.e. a draw).

# You may assume that the board passed in is valid in the context of a game of Tic-Tac-Toe.

def is_solved(board)
  # set incomplete variable to false
  # set winner variable to false

  # for each array, check if all elements are same AND 1 or 2
    # if so, set winner variable to true and grab the winner number
    # else, check if any are 0
      # if there's a zero, then mark "incomplete" variable as true
  # if after checking horizontally, winner is true AND incomplete is false, return appropriate winner

  # if no winner yet, then check for diagonal winner and vertical winner
  # no need to check for zero existance again
  # return appropriate winner if there is one

  # if after checking last direction and winner is still false
    # return -1 if incomplete == true, and 0 if incomplete == false

  incomplete = false 
  winner_num = 0

  board.each do |array|
    winner_num = array[0] if array.uniq.length <= 1 && array[0] != 0
    incomplete = true if array.include?(0)
  end

  return 1 if winner_num == 1
  return 2 if winner_num == 2

  for i in 0..2
    winner_num = board[0][i] if board[0][i] == board[1][i] && board[1][i] == board[2][i]
  end

  return 1 if winner_num == 1
  return 2 if winner_num == 2

  winner_num = board[0][0] if board[0][0] == board[1][1] && board[1][1] == board[2][2]
  winner_num = board[0][0] if board[0][2] == board[1][1] && board[1][1] == board[2][0]

  return 1 if winner_num == 1
  return 2 if winner_num == 2
  return 0 if winner_num == 0 && incomplete = false
  return -1 if winner_num == 0 && incomplete = true

end