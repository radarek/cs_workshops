def foo
  bar
  baz
rescue ZeroDivisionError
  puts "error :("
end

def bar
  baz
end

def baz
  2 / 0
end

foo
