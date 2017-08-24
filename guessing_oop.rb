class WinningNumber
  def initialize
    @number = rand(100)
    @number_of_guesses = 0
  end

  def guess(number)
    increase_number_of_guesses

    if @number < number
      :less
    elsif @number > number
      :more
    else
      :equal
    end
  end

  private

  def increase_number_of_guesses
    @number_of_guesses += 1
  end
end

class Game
  def initialize
    @winning_number = WinningNumber.new
  end

  def game_loop
    loop do
      player_number = gets.to_i

      case @winning_number.guess(player_number)
      when :less
        puts "mniej"
      when :more
        puts "więcej"
      when :equal
        puts "zgadles, gratulacje!"
        break
      end
    end
  end
end

Game.new.game_loop
