# array = Array.new(100) { rand(100) }
array = [3, 3, 3, 33, 43]

hash = array.group_by { |e| e % 10 }
transformed_hash = hash.transform_values do |v|
  v.inject({}) do |acc, elem|
    if acc[elem.to_s.size]
      acc[elem.to_s.size] += 1
    else
      acc[elem.to_s.size] = 1
    end
    acc
  end
end

puts transformed_hash
