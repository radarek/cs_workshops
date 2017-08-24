module Collar
  def pull
    puts "Pulling... #{self}"
  end

  def self.say_hello
    puts "Hello from Collar module"
  end
end

module TrackingChip
  def get_tracking_id
    @tracking_id ||= rand(1000)
  end
end

class Dog
  include Collar
  include TrackingChip
end

class Cat
  include Collar
end

dog = Dog.new
puts dog.get_tracking_id
puts dog.get_tracking_id

Collar.say_hello
