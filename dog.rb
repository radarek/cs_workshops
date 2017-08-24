class Dog
  attr_accessor :name, :breed

  def initialize(name, breed)
    @breed = breed
    @name = name
  end

  def say_hello(other_dog)
    other_dog.sniff
  end

  def name=(name)
    @name = name
  end

  def bark
    puts "Bark, bark."
    self.bark_name
    self.bark_breed
  end

  private

  def bark_name
    puts "My name is #{@name}."
  end

  def bark_breed
    puts "I'm a #{@breed}."
  end

  protected

  def sniff
    puts "Sniffing"
  end
end
