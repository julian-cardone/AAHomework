class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new([])}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
   cups.each_with_index do |ele, i|
    if i == 6 || i == 13
      next
    else cups[i] = [:stone, :stone, :stone, :stone]
    end
   end
  end

  def valid_move?(start_pos)
    unless start_pos.between?(0, 13)
      raise ArgumentError.new 'Invalid starting cup'
    end

    if cups[start_pos].empty?
      raise ArgumentError.new 'Starting cup is empty'
    end
  end

  def make_move(start_pos, current_player_name)
    stones = cups[start_pos]
    cups[start_pos] = []

    cup1 = start_pos
    until stones.empty?
      cup1 += 1
      cup1 = 0 if cup1 > 13
      if cup1 == 6
        cups[6] << stones.pop if current_player_name == @name1
      elsif cup1 == 13
        cups[13] << stones.pop if current_player_name == @name2
      else
        cups[cup1] << stones.pop
      end
    end
    render
    next_turn(cup1)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0..5].all? { |cup| cup.empty? } || cups[7..12].all? { |cup| cup.empty? }
  end

  def winner

    player1 = cups[6].length
    player2 = cups[13].length

    if player1 == player2
      :draw 
    else
    player1 < player2 ? @name2 : @name1
    end

  end
end
