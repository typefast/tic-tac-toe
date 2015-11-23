require './board.rb'
require './player.rb'

board = Board.new

playerO = Player.new('O')
playerX = Player.new('X')
board.print_board

loop do 
  playerO.make_move
  board.print_board
  playerO.check_scenario

  playerX.make_move
  board.print_board
  playerX.check_scenario
  
end

