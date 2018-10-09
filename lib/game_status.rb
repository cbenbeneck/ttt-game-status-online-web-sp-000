# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #top row 
  [3,4,5], #middle row
  [6,7,8], #bottom row 
  [0,4,8], #diag 1 
  [2,4,6], #diag 2 
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  ]
  
  def won?(board) 
    WIN_COMBINATIONS.each {|win_combination| 
      win_combo_1 = win_combination[0]
      win_combo_2 = win_combination[1]
      win_combo_3 = win_combination[2]
      
      position_1 = board[win_combo_1]
      position_2 = board[win_combo_2]
      position_2 = board[win_combo_3]
      
      if position_1 == "X" && position_2 == "X" && positon_3 == "X" ||
        
        position_1 == "O" && position_2 == "O" && positon_3 == "O" 
        
        return win_combination
      else
        false 
      end
    end
  end
  
