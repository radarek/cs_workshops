# require "byebug"
# byebug

# def generate_array(n)
#   array = []

#   n.times do
#     array << yield
#   end

#   array
# end

def generate_array(n)
  array = []
  n.times { array << yield }
  return array
end

arr = generate_array(10) do
  rand(100)
end

puts arr
