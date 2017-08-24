# module X
class X
  class Lamp
    def name
      "Lamp from X module"
    end
  end
end

# module Y
class Y
  class Lamp
    def name
      "Lamp from Y module"
    end
  end
end

puts X::Lamp.new.name
puts Y::Lamp.new.name