def method_with_block
  value_from_block = yield(123)
  puts "Got value from block: #{value_from_block}"
end

method_with_block do |value|
  puts "Got value: #{value}"
  value + 1
end
