class Blender
  def blend(duration = 30, *ingredients)
    names = ingredients.join(", ")
    puts "Making juice from #{names} for #{duration} seconds"
  end

  def blend2(duration = 30, fruit: "apple", vegetable: "tomato")
    puts "Making juice from #{fruit} and #{vegetable} for #{duration} seconds"
  end
end

Blender.new.blend(5, "apple")
Blender.new.blend(30, "apple", "banana", "tomato")
