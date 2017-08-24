class A
end

class B < A
end

class C < B
end

class D < A
end

def show_hierarchy(klass)
  klasses = []
  while klass != nil
    klasses << klass
    klass = klass.superclass
  end
  puts klasses.map { |klass| klass.name }.join(" -> ")
end

show_hierarchy(C) #=> C -> B -> A -> Object -> BasicObject
# show_hierarchy(D)
# show_hierarchy(Array)
# itp
