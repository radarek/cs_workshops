class Player
  include Comparable

  attr_reader :score

  def initialize(score)
    @score = score
  end

  def <=>(other)
    if score < other.score
      -1
    elsif score > other.score
      1
    else
      0
    end
  end

  def to_s
    "Player[score:#{score}]"
  end

  def inspect
    to_s
  end

  def score
    rand(100)
  end
end

p1 = Player.new(10)
p2 = Player.new(20)

puts p1 > p2

array = [Player.new(40), Player.new(13), Player.new(100), Player.new(4)]
puts array.sort
