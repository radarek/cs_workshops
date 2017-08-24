require "byebug"

def ntimes(n)
  i = 0
  while i < n
    yield(i)
    i += 1
  end
end

ntimes(3) { |i| puts "Hello #{i}" }
