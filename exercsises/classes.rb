class Car
end

class Cookie
end

class CoffeeMachine
  def grind_grains
    puts "Grinding grains"
  end

  def make_coffee
    self.grind_grains
    self.add_milk
    puts "Making coffee now"
    puts self.class.company_name
  end

  def add_milk
    puts "Pouring milk"
  end

  def show
    self
  end

  def self.company_name
    "Foo company"
  end
end

class Dog
end

class Cat
end
