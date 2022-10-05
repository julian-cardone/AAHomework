class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize

    @seq = []
    @sequence_length = 1
    @game_over = false

  end

  def play

    until @game_over do
      take_turn
    end

      game_over_message
      reset_game

  end

  def take_turn

    show_sequence
    require_sequence

    unless game_over
      round_success_message
      @sequence_length += 1
    end

  end

  def show_sequence

    add_random_color

  end

  def require_sequence

    guesses = []

    i = sequence_length
    while i < sequence_length
      guesses << gets.chomp
      if guesses[i-1] != seq[i-1]
         game_over = true
         break
      end
      i += 1
    end

  end

  def add_random_color

    seq << COLORS.sample

  end

  def round_success_message

    puts "Good job!"

  end

  def game_over_message

    puts "Game over!"

  end

  def reset_game

    @sequence_length = 1
    @game_over = false
    @seq = []

  end
end
