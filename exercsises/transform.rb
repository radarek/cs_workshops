array = Array.new(100) { rand(100) }
hash = array.group_by { |v| v % 10 }
transformed_hash = hash.transform_values { |v| v.length }

puts transformed_hash
