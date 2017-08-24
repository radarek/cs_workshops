require "pp"

arr = Array.new(100) { rand(100) }

hash = {}

arr.each do |elem|
  last_digit = elem % 10
  if hash[last_digit] == nil
    hash[last_digit] = [elem]
  else
    hash[last_digit] << elem
  end
end

pp hash