require "byebug"

def map(source)
  byebug
  result = []
  source.each do |elem|
    result << yield(elem)
  end
  result
end

puts map([3, 4, 5]) { |e| e ** 2 }