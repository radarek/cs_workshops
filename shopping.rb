class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Shop
  attr_accessor :name, :products

  def initialize(name)
    @name = name
    @products = []
  end

  def add_product(product, quantity = 1)
    quantity.times { @products << product }
  end

  def take(name)
    index = @products.index { |product| product.name == name }
    return @products.delete_at(index) if index
  end
end

class Client
  attr_accessor :list
  attr_reader :money, :name, :bag

  def initialize(name, money)
    @name = name
    @money = money
    @bag = []
    @list = []
  end

  def perform_shopping(shop)
    while product_name = list.pop
      product = shop.take(product_name)
      bag << product
    end
    true
  end
end

shop = Shop.new("Stonka")
shop.add_product(Product.new("ser", 3.56), 5)
shop.add_product(Product.new("chleb", 4.23), 2)
shop.add_product(Product.new("jogurt", 2.2), 2)
shop.add_product(Product.new("szynka", 5), 4)

client = Client.new("Janusz", 30)
client.list = ["chleb", "jogurt", "szynka"]
client.perform_shopping(shop)

require "pp"
pp client.bag
