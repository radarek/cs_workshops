def always_seven
  puts "Just kidding"
  return 8
  puts "Does it work?"
end

def method_with_loop
  loop do
    line = gets.chomp
    if line == "ok"
      return
    end
  end
end

def method_without_return
  if rand(2) == 0
    1
  else
    2
  end
end

puts method_without_return
