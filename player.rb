class Player < Board
  attr_reader :player_type
  def initialize(player_type)
    @player_type = player_type
  end
  
  def make_move
    puts "Player #{player_type} Turn "
    puts "Enter a coord on the left:"
    x = gets.chomp
    puts "Enter a coord on the top"
    y = gets.chomp
    
    if @@board[x.to_i][y.to_i] == '|'
      @@board[x.to_i][y.to_i] = player_type
    else
      puts "Try again, position taken."
      make_move
    end
  end
  
  def winner
    puts "Winner #{@player_type}"
    exit(0)
  end
  
  def check_horizontal_scenario
    if @@board[1][1] == @player_type && @@board[1][2] == @player_type && @@board[1][3] == @player_type
      winner
    elsif @@board[2][1] == @player_type && @@board[2][2] == @player_type && @@board[2][3] == @player_type
      winner
    elsif @@board[3][1] == @player_type && @@board[3][2] == @player_type && @@board[3][3] == @player_type
      winner
    end
  end
  
  def check_vertical_scenario
    if @@board[1][1] == @player_type && @@board[2][1] == @player_type && @@board[3][1] == @player_type
      winner
    elsif @@board[1][2] == @player_type && @@board[2][2] == @player_type && @@board[3][2] == @player_type
      winner
    elsif @@board[1][3] == @player_type && @@board[2][3] == @player_type && @@board[3][3] == @player_type
      winner
    end
  end
  
  def check_diagonal_scenario
    if @@board[1][1] == @player_type && @@board[2][2] == @player_type && @@board[3][3] == @player_type
      winner
    elsif @@board[1][3] == @player_type && @@board[2][2] == @player_type && @@board[3][1] == @player_type
      winner
    end
  end
  
  def check_draw
    slots = []
    @@board.each do |line|
      line.select { |item| slots << item if item == "|" }
    end
    if !slots.include? "|"
      puts "It was a draw!!"
      exit(0)
    end
  end
  
  def check_scenario
    check_diagonal_scenario
    check_horizontal_scenario
    check_vertical_scenario
    check_draw
  end
end







