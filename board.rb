class Board
  attr_accessor :board
  def initialize
    @@board = [['-','1','2','3'],['1','|','|','|'],['2','|','|','|'],['3','|','|','|']]
  end
  
  def print_board
    @@board.each do |line|
      connect = line.join(' ')
      print "#{connect}\n"
    end
  end
end


