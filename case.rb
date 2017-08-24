random_value = rand

if random_value < 0.3
  status = :destroyed
elsif random_value < 0.6
  status = :active
else
  status = :unknown
end

case status
when :active
  puts "All's good"
when :destroyed
  puts "We lost them"
else
  puts "Unknown status"
end
