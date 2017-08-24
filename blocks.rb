def say_hello
  yield
  puts "Hello!"
  yield
end

def my_loop
  while true
    yield
  end
end

def say_goodbye
  puts "Goodbye!"
  if block_given?
    puts "Block given"
    yield
  else
    puts "No block given"
  end
end

# say_goodbye
# say_goodbye do
#   puts "Calling say_goodbay, I'm inside block"
# end

def block_with_param
  puts "Before calling block"
  yield(123)
  puts "After calling block"
end

block_with_param do |value|
  puts "Inside block, got #{value}"
end

block_with_param { |value| puts "Inside block, got #{value}" }
