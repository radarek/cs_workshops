class Lamp
  def turn_on
    puts "Iluminating..."
  end

  def turn_off
    puts "Going dark"
  end

  def turn_on_and_off
    turn_on
    turn_off
  end
end

class BrokenLamp < Lamp
  def turn_on
    puts "Oh no..."
  end
end

broken_lamp = BrokenLamp.new
broken_lamp.turn_on_and_off
