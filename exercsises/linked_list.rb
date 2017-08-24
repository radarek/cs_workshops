class Entry
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  include Enumerable

  def initialize
    @head = nil
  end

  def each
    current = @head
    while current != nil
      yield(current.value)
      current = current.next
    end
  end

  def push(value)
    if empty?
      @head = Entry.new(value)
    else
      last_entry.next = Entry.new(value)
    end
  end

  private

  def empty?
    @head.nil?
  end

  def last_entry
    if @head.nil?
      nil
    else
      current = @head
      while current.next != nil
        current = current.next
      end
      current
    end
  end
end

list = LinkedList.new
list.push(5)
list.push(6)
list.push(7)
list.each { |e| puts e }
