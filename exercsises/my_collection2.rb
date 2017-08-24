class Entry
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class MyCollection
  def initialize
    @root = nil
  end

  def push(value)
    entry = Entry.new(value)
    if @root.nil?
      @root = entry
    else
      last = @root
      while last.next != nil
        last = last.next
      end
      last.next = entry
    end
  end

  def each
    entry = @root
    while entry
      yield entry.value
      entry = entry.next
    end
  end
end

c = MyCollection.new
c.push 5
c.push 6

c.each do |e|
  puts e
end
