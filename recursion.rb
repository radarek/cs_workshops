def sum(numbers)
  if numbers.empty?
    0
  else
    numbers[0] + sum(numbers[1..-1])
  end
end


puts sum([4, 5, 6])
